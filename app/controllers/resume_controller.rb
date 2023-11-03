class ResumeController < ApplicationController
  def show
    send_file(
      "#{Rails.root}/public/resume.pdf",
      filename: "resume.pdf",
      type: "application/pdf",
      disposition: :inline
    )
  end
end
