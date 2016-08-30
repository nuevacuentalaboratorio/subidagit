class Skugraph < ActiveRecord::Base

def self.search(search)
  if search
    where('sku LIKE ?', "%#{search}%")
  else
    all
  end
end

	def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |skugraph|
        csv << skugraph.attributes.values_at(*column_names)
      end
    end
  end
  
require 'roo'

def self.import(file)
  if file != nil
  CSV.foreach(file.path, headers: true) do |row|
    Skugraph.create! row.to_hash
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
