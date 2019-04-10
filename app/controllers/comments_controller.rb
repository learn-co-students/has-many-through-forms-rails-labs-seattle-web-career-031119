class CommentsController < ApplicationController

  def create
    if !custom_username_empty?
      comment = Comment.create(custom_user_comment_params)
    else
      comment = Comment.create(comment_params)
    end
    redirect_to post_path(comment.post)
  end

  private

  def custom_username_empty?
    params[:comment][:user_attributes][:username].empty?
  end

  def custom_user_comment_params
    params.require(:comment).permit(:content, :post_id, user_attributes:[:username])
  end

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end
end
