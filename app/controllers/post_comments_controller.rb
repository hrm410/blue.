class PostCommentsController < ApplicationController
	before_action :authenticate_user!
	def create
		post = Post.find(params[:post_id])
		comment = current_user.post_comments.new(post_comment_params)
		comment.post_id = post.id
		comment.save
		redirect_to post_path(post)
	end


	def destroy
		comment = PostComment.find(params[:id])
		if  comment.user == current_user
			comment.destroy
			redirect_to post_path(params[:post_id])
		else
			redirect_to root_path
		end
	end

	private

	def post_comment_params
		params.require(:post_comment).permit(:user_id, :post_id, :comment)
	end
end
