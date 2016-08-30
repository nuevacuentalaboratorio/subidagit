  require 'httparty'
  require 'roo'
  require 'rubygems'
  require 'json'
class Product < ActiveRecord::Base
  
  include HTTParty
  base_uri 'https://c5f242d64f68cd6023defe5da5799e30:48337be53d8e7e8ba703cb64d8b2a2b9@ann-chery.myshopify.com/admin'


  dragonfly_accessor :asset
  dragonfly_accessor :asset2
  dragonfly_accessor :asset3
  has_many :variations
  has_many :skus

  #attr_accessible :title

  def self.abc
  
    @json = get(base_uri+"/products.json?fields=vendor,title,handle,tags,product_type,images")
    @json = @json.to_json

    @parsed_json = ActiveSupport::JSON.decode(@json)
    @no = ""
    for product in @parsed_json["products"]

        @productima = product["images"]
        if @productima != nil

             
              for index in 1...@productima.size
                if index == 5
                  break
                end
                  im = @productima[index]
                  product["imagen#{index}"] = im["src"]

              end

              
              

        end




      product.except!(*"images")
      Product.create! product 
    end
  
    return @no
  end

  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end
  


def self.import(file)
  if file != nil
  CSV.foreach(file.path, headers: true) do |row|
    Product.create! row.to_hash
  end
  else
    @mensaje = "hola";
  end
end



  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when ".csv" then Roo::Csv.new(file.path, nil, :ignore)
    when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
    when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end



end
