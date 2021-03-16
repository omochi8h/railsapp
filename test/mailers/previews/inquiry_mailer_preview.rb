# Preview all emails at http://localhost:3000/rails/mailers/inquiry_mailer
class InquiryMailerPreview < ActionMailer::Preview
  def inquiry
   inquiry = Inquiry.new(circle_name: "ばすけ",
     email: "basket@com",person_name:"たろ太郎",
   kind:"運動部")

   InquiryMailer.send_mail(inquiry)
 end


end
