class DayoftweetsController < ApplicationController
    
    def index
        @dayoftweets = Dayoftweet.where(user_id: current_user.id)
    end
    
    def new
    @dayoftweet = Dayoftweet.new
    
    
    2.times {@dayoftweet.tweets.build}
    
    end
    
    
    def create
     Dayoftweet.create(dayoftweet_params)
     
 end
 
 private
    def dayoftweet_params
         params.require(:dayoftweet).permit(:day, :year).merge(user_id: current_user.id)
  end
             
        
end
