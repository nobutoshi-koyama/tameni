class SyukkasController < ApplicationController
    
    def index
        @syukkas = Syukka.all
    end
    
    def new
end
   
    def create
      Syukka.create( farmer: syukka_params[:farmer], menu: syukka_params[:menu], detail: syukka_params[:detail], quantity: syukka_params[:quantity])
  end
  
  def syukka_params
      params.require(:syukka).permit( :farmer, :menu, :detail, :quantity)
  end
end
