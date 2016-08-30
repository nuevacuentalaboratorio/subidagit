class DownloadController < ApplicationController
  def zip
    send_file Rails.root.join('private', 'Rogelio Alvarado Vilchis.zip'), :type=>"application/zip", :x_sendfile=>true
  end

  def pdf
    send_file Rails.root.join('private', 'Rogelio Alvarado Vilchis.pdf'), :type=>"application/pdf", :x_sendfile=>true
  end

  def doc
    send_file Rails.root.join('private', 'Rogelio Alvarado Vilchis.docx'), :type=>"application/doc", :x_sendfile=>true
  end
end
