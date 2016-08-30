require 'carrierwave/processing/mime_types'
class Archivo < ActiveRecord::Base

has_attached_file :uploaded_file
validates_attachment_content_type :uploaded_file, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf", 'application/zip', 'text/plain', 'application/xls', 'application/xls', 'application/msword', 'application/vnd.ms-excel', 'application/vnd.ms-csv', 'text/csv']

validates_attachment_size :uploaded_file, :less_than => 10.megabytes   
validates_attachment_presence :uploaded_file




def self.search(search)
  if search
    where('nombre LIKE ?', "%#{search}%")
  else
    all
  end
end






end
