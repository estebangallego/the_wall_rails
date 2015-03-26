class WallsController < ApplicationController
	before_action :signed_in_user
	def index
		@posts = Wall.all.preload(:user, :comments)
		# @comments = Wall.find(1).comments
	end
	def create
		post = Wall.new(post_params)
		if post.save
			flash[:success] = "Post added!"
			redirect_to request.referer
		else
			flash[:danger] = post.errors.full_messages
			redirect_to request.referer
		end	
	end
	private
	def post_params
		params.require(:wall).permit(:post, :user_id)
	end
end
