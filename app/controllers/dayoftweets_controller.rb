class DayoftweetsController < ApplicationController
    
    def index
        @dayoftweets = Dayoftweet.all
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
         params.require(:dayoftweet).permit(:day, :year)
             
         end
end
