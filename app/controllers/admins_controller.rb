class AdminsController < ApplicationController
    
    before_action :authenticate_user!, :except =>[:index]
    
    def new
    end
    
    def create
    Admin.create(menu: params_admin[:menu], detail: params_admin[:detail], user_id: current_user.id, image: params_admin[:image])

    end
    
    def index
     @admins = Admin.all
 end
 
    def show
    @admin = Admin.find(params[:id])
end

    def edit
        @admin = Admin.find(params[:id])
    end
    
    def update
        admin = Admin.find(params[:id])
        admin.update(params_admin) if current_user.id == 1
    end
    
    
    private
    def params_admin
        params.require(:admin).permit(:menu, :detail, :image)
    end
end
