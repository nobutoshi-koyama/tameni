class AdminsController < ApplicationController
    def new
    end
    
    def create
    Admin.create(menu: params_admin[:menu], detail: params_admin[:detail], user_id: current_user.id)
    end
    
    def show
     @admins = Admin.all
 end
    
    private
    def params_admin
        params.require(:admin).permit(:menu, :detail)
    end
end
