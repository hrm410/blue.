class HomeController < ApplicationController

	def top
		@posts = Post.all
		@post = Post.last
		@users = User.all
		@tags = ActsAsTaggableOn::Tag.most_used
	end

	def search
		@posts = Post.search(params[:search])
		@users = User.search(params[:search])
	end

end
