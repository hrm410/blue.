class HomeController < ApplicationController

	def top
		@posts = Post.all
		@post = Post.last
		@users = User.all
	end

	def search
		@posts = Post.search(params[:search])
		@users = User.search(params[:search])
	end

end
