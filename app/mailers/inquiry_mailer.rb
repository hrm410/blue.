class InquiryMailer < ApplicationMailer
	default from: "info@独自ドメイン"
	default to: "hrm410.nwkw@gmail.com"

	def received_email(inquiry)
		@inquiry = inquiry
		mail(to: @inquiry.email, subject: "お問い合わせありがとうございます。")
	end
end
