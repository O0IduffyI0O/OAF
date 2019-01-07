class PagesController < ApplicationController
  def home
  end
  
  def about
  end
  
  def download_pdf
    send_file(
      "#{Rails.root}/public/Select Brochure.pdf",
      filename: "Select_Brochure.pdf",
      type: "application/pdf"
    )
  end
end