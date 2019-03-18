class PostCommentsController < ApplicationController
	before_action :authenticate_user!
	def create
		@post = Post.find(params[:post_id])
		@post_comment = current_user.post_comments.new(post_comment_params)
		@post_comment.post_id = @post.id
		if @post_comment.save
		   redirect_to post_path(@post)
		else
			render 'posts/show'
		end
	end



	def destroy
		@post_comment = PostComment.find(params[:id])
		if  @post_comment.user == current_user
			@post_comment.destroy
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
