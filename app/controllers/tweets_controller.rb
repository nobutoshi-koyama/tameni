class TweetsController < ApplicationController
    
    before_action :authenticate_user!, :except =>[:index]
    
    def index
        
        @users = User.all
        
        @tweets = Tweet.where(user_id: current_user.id)
    end
    
    # def show
    #  @tweets = Tweet.find(params[:id])
    #  @user = @tweets.user
    # end
    
    def new
        # @tweet = Tweet.new
        
    
    end
    
    
    
    def create
        Tweet.create(start_year: tweet_params[:start_year], end_year: tweet_params[:end_year], start_month: tweet_params[:start_month], end_month: tweet_params[:end_month], start_day: tweet_params[:start_day], end_day: tweet_params[:end_day], quantity: tweet_params[:quantity], menu: tweet_params[:menu],text: tweet_params[:text], user_id: current_user.id)
          if tweet_params[:menu].present? && tweet_params[:quantity].present? && tweet_params[:start_year].present? && tweet_params[:start_month].present? && tweet_params[:start_day].present? && tweet_params[:end_year].present? && tweet_params[:end_month].present? && tweet_params[:end_day].present?
              flash.now[:notice] = "登録完了"
          else
              flash[:notice] = "すべての項目を入力してください"
              redirect_to action: :new
          end
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
    
    def search
        #Viewのformで取得したパラメータをモデルに渡す
         @tweets = Tweet.search(params[:search])
    end
    
    
    private
    def tweet_params
        params.require(:tweet).permit(:start_year, :end_year, :start_month, :end_month, :start_day, :end_day, :quantity, :menu, :text)
    
    end
end
