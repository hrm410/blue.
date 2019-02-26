class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = User.page(params[:page]).reverse_order
	end

	def show
		@user = User.find(params[:id])
		@posts = @user.posts.page(params[:page]).reverse_order
	end

	def create
	end


	def following
		@user = User.find(params[:id])
		@users = @user.followings.page(params[:page]).reverse_order
	end

	def followers
		@user = User.find(params[:id])
		@users = @user.followers.page(params[:page]).reverse_order
	end

	def current_user?(user)
		user == current_user
	end

end
