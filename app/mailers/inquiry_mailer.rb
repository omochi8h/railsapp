class InquiryMailer < ApplicationMailer

  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      from: "system@example,com",
      to: "omochi8h@gmail.com"
      # subject: "お問い合わせ通知"
    )
  end


end
