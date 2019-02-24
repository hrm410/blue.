class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = User.page(params[:page]).reverse_order
	end

	def show
		@user = User.find(params[:id])
	end

	def create
	end


	def following
		@user = User.find(params[:id])
		@users = @user.followings
	end

	def followers
		@user = User.find(params[:id])
		@users = @user.followers
	end

	def current_user?(user)
		user == current_user
	end

end
