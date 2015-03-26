class CommentsController < ApplicationController
	def create
		comment = Wall.find(comment_params[:wall_id]).comments.new(comment_params)
		if comment.save
			flash[:success] = "Post added!"
			redirect_to request.referer
		else
			flash[:danger] = comment.errors.full_messages
			redirect_to request.referer
		end		
		
	end
	private
	def comment_params
		params.require(:comment).permit(:comment, :user_id, :wall_id)
	end
end
