class PostsController < ApplicationController
	before_action :authenticate_user!

	def index
		@posts = Post.page(params[:page]).reverse_order
	end

	def show
		@post = Post.find(params[:id])
		@post_comment = PostComment.new
		@user = @post.user
	end

	def new
		@post = Post.new
	end

	def create
		post = Post.new(post_params)
		post.user_id = current_user.id
		if  post.save
			redirect_to posts_path
		else
		   render new_post_path
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		post = Post.find(params[:id])
		post.update(post_params)
		redirect_to post_path(post)
	end

	def destroy
		post = Post.find(params[:id])
		post.destroy
		redirect_to posts_path
	end

	def search
		@posts = Post.search(params[:search])
	end

	def tag_search
		@posts = Post.tagged_with(params[:tag_name])
	end


	private

	def post_params
		params.require(:post).permit(:title, :content, :video , :tag_list)
	end
end