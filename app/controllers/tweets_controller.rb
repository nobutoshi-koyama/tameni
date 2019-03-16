class TweetsController < ApplicationController
    
    before_action :authenticate_user!, :except =>[:index]
    
    def index
        @users = User.joins(:tweets).includes(:tweets)
        
    end
    
    
    
     def new
         @dayoftweet = Dayoftweet.find(params[:dayoftweet_id])
         @tweet = Tweet.new
         @tweet.dayoftweet_id = @dayoftweet.id
end
   
    def create
      Tweet.create( menu: tweet_params[:menu], text: tweet_params[:text], quantity: tweet_params[:quantity], start_day: tweet_params[:start_day], end_month: tweet_params[:end_month], end_day: tweet_params[:end_day], dayoftweet_id: tweet_params[:dayoftweet_id], user_id: current_user.id)
  
      
  end
    
    
    
    
    
    def destroy
        tweet = Tweet.find(params[:id])
     tweet.destroy if tweet.user_id == current_user.id
    end
    
    def edit
        @tweet = Tweet.find(params[:id])
    end
    
    def update
        tweet = Tweet.find(params[:id])
        tweet.update(tweet_params) if tweet.user_id == current_user.id
    end
    
    
    
    
    private
    def tweet_params
        params.require(:tweet).permit( :end_month, :start_day, :end_day, :quantity, :menu, :text, :dayoftweet_id, :user_id)
    
    end
end
