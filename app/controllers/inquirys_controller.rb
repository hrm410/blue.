# class InquirysController < ApplicationController
# 	def index
# 		# 入力画面
# 		@inquiry = Inquiry.new
# 		render :action => "index"
# 	end

# 	def confirm
# 		# 入力確認
# 		@inquiry = Inquiry.new(params[:inquiry])
# 		if @inquiry.valid?
# 			render :action => "confirm"
# 		else
# 			render :action => "index"
# 		end
# 	end

# 	def thanks
# 		# メール送信
# 		@inquiry = Inquiry.new(params[:inquiry])
# 		InquiryMailer.received_email(@inquiry).deliver

# 		# 完了画面を表示
# 		render :action => "thanks"
# 	end
# end
