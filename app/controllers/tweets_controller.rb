class TweetsController < ApplicationController
    
    def index 
        if user_signed_in?
        # フラッシュメッセージ
        flash.now[:notice] = "ようこそ。本日は#{Date.today}です。"
    end
    end
    
    def show
     @tweet = Tweet.where(user_id: current_user.id).page(params[:page]).per(5).order("created_at ASC")
    end
    
    def new
        # @tweet = Tweet.new
    end
    
    def create
        Tweet.create(start_year: tweet_params[:start_year], end_year: tweet_params[:end_year], start_month: tweet_params[:start_month], end_month: tweet_params[:end_month], start_day: tweet_params[:start_day], end_day: tweet_params[:end_day], quantity: tweet_params[:quantity], menu: tweet_params[:menu], user_id: current_user.id)
        flash.now[:notice] = "登録完了"
    end
    
    def destroy
        tweet = Tweet.find(params[:id])
     tweet.destroy if tweet.user_id == current_user.id
    end
    
    private
    def tweet_params
        params.permit(:start_year, :end_year, :start_month, :end_month, :start_day, :end_day, :quantity, :menu)
    
    end
end
