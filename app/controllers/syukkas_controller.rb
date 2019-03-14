class SyukkasController < ApplicationController
    
    def index
        @syukkas = Syukka.all
    end
    
    def new
end
   
    def create
      Syukka.create(year: syukka_params[:year], month: syukka_params[:month], day: syukka_params[:day], farmer: syukka_params[:farmer], menu: syukka_params[:menu], detail: syukka_params[:detail], quantity: syukka_params[:quantity], user_id: current_user.id)
  end
  
  def syukka_params
      params.require(:syukka).permit(:year, :month, :day, :farmer, :menu, :detail, :quantity)
  end
end
