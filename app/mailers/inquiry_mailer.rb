class InquiryMailer < ApplicationMailer

	def received_email(inquiry)
		@inquiry = inquiry
		mail(subject: "お問い合わせを承りました。",
			 from: "blue.videos83@gmail.com",
			 to: "hrm410.nwkw@gmail.com" )
	end
end
