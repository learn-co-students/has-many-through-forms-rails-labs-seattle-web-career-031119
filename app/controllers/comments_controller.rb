class CommentsController < ApplicationController

  def create
    if !params[:comment][:user_id].empty?
      comment = Comment.create(other_params)
      redirect_to post_path(comment.post)
    else
      # byebug
      comment = Comment.create(comment_params)
      redirect_to post_path(comment.post)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, user_attributes:[:username])
  end

  def other_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end


end
