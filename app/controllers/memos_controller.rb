class MemosController < ApplicationController
    
    def index
        
        if user_signed_in?
        # フラッシュメッセージ
        flash.now[:notice] = "ようこそ。本日は#{Date.today}です。"
        end
        
        @memos = Memo.all
    end
    
    def new
    end
    
    def create
        Memo.create(title: memo_params[:title], text: memo_params[:text], user_id: current_user.id, image: memo_params[:image])
    end
    
    def show
      @memo = Memo.find(params[:id])
  end
  
    def destroy
         memo = Memo.find(params[:id])
    memo.destroy if memo.user_id == 1
    end

    
    
    private
    def memo_params
        params.require(:memo).permit(:title, :text, :image)
    end
end
