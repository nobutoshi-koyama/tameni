class ChouseisController < ApplicationController
    
    def index
        @chouseis = Chousei.all
end
    
    def new
    @chousei = Chousei.new
    
    
    # 5.times 
    @chousei.syukkas.build
    
    
    
    end
    
    
    def create
     Chousei.create(chousei_params)
     
 end
    
    private
    def chousei_params
         params.require(:chousei).permit(
             :day,
             syukkas_attributes: [:farmer, :menu, :detail, :quantity]
             
             )
        
         end
         
         
             
end