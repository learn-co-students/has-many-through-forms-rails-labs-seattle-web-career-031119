class CommentsController < ApplicationController

  def create
    if (comment_params_attr["user_attributes"]["username"].empty?)
      comment = Comment.create(comment_params_id)
    else
      comment = Comment.create(comment_params_attr)
    end

    redirect_to comment.post
  end

  private

  def comment_params_id
    params.require(:comment).permit(:content, :post_id, :user_id)
  end

  def comment_params_attr
    params.require(:comment).permit(:content, :post_id, user_attributes: [:username, :email])
  end
end
