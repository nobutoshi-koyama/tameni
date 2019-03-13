class CommentsController < ApplicationController
    
    
    def create
    @comment = Comment.create(text: comment_params[:text], memo_id: comment_params[:memo_id], user_id: current_user.id)
    redirect_to "/memos/#{@comment.memo.id}"
  end

  private
  def comment_params
    params.permit(:text, :memo_id)
  end
end
