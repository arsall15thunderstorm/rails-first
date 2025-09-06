class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout "mailer"

  def in_stock
    @product = params[:product]
    mail to: params[:subscribers].email
  end
end
