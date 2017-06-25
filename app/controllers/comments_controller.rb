class CommentsController < ApplicationController
	#before_action :authenticate_user!
	before_action :find_commentable, only: :create

	def create
	    @comment = @commentable.comments.new do |comment|
	      comment.comment = params[:comment]
	      comment.user = current_user
	    end
	    @comment.save
	    redirect_to post_path(@commentable.id)
	end

	def destroy
	    @comment = current_user.comments.find(params[:id])
	    @comment_id = params[:id]
	    @comment.destroy
	end

	private
	  def find_commentable
	    @commentable = Post.find(params[:id])
	    #@commentable_type = params[:commentable_type].classify
	    #@commentable = @commentable_type.constantize.find(params[:commentable_id])
	  end
end