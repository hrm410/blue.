# Preview all emails at http://localhost:3000/rails/mailers/inquiry_mailer
class InquiryMailerPreview < ActionMailer::Preview
	def inquiry
		inquiry = Inquiry.new(name: "sample", message: "test", email: "example@email.com")
		InquiryMailer.received_email(inquiry)
	end
end
