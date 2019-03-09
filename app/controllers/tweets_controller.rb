class TweetsController < ApplicationController
    
    def index 
        # @tweets = Tweet.all
    end
    
    def new
        @tweet = Tweet.new
    end
    
    def create
        Tweet.create(start_year: tweet_params[:start_year], end_year: tweet_params[:end_year], start_month: tweet_params[:start_month], end_month: tweet_params[:end_month], start_day: tweet_params[:start_day], end_day: tweet_params[:end_day], quantity: tweet_params[:quantity], menu: tweet_params[:menu])
    end
    
    private
    def tweet_params
        params.permit(:start_year, :end_year, :start_month, :end_month, :start_day, :end_day, :quantity, :menu)
    
    end
end
