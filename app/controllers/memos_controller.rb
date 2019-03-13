class MemosController < ApplicationController
    
    def index
        
        if user_signed_in?
        # フラッシュメッセージ
        flash.now[:notice] = "ようこそ。本日は#{Date.today}です。"
        end
        
        @memos = Memo.all.page(params[:page]).per(5).order("created_at DESC")
        
        
        # topの表示はそのユーザーと管理者が投稿したもののみにしたい
        # if current_user.id == 1
        #     @memos = Memo.all
        # end
    end
    
    def new
    end
    
    def create
        Memo.create(title: memo_params[:title], text: memo_params[:text], user_id: current_user.id, image: memo_params[:image])
    end
    
    def show
      @memo = Memo.find(params[:id])
       @comments = @memo.comments.includes(:user)
  end
  
    def destroy
         memo = Memo.find(params[:id])
    memo.destroy if current_user.id == 1
    end

    
    
    private
    def memo_params
        params.require(:memo).permit(:title, :text, :image)
    end
end
