class ChouseisController < ApplicationController
    
    def index
        @chouseis = Chousei.order("day DESC")
end

    def show
    @chousei = Chousei.find(params[:id])
    @syukkas = @chousei.syukkas
end
    
    def new
    @chousei = Chousei.new
    
    
    2.times {@chousei.syukkas.build}
    
    end
    
    
    def create
     Chousei.create(chousei_params)
     
 end
 
    def edit
        @chousei = Chousei.find(params[:id])
    
    end
    
    def update
        chousei = Chousei.find(params[:id])
        
        if current_user.id == 1
          if chousei.update(update_params)
              redirect_to chousei_path
              
          else
              render :edit
          end
      end
    end
    
    private
    def chousei_params
         params.require(:chousei).permit(
             :day,
             syukkas_attributes: [:farmer, :menu, :detail, :quantity]
             
             )
        
         end
         
     def update_params
         params.require(:chousei).permit(
             :day,
             syukkas_attributes: [:farmer, :menu, :detail, :quantity, :_destroy, :id]
             
             )
        
         end
         
         
             
end
