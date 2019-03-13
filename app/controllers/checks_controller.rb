class ChecksController < ApplicationController
    
    def create
    @check = current_user.checks.create(memo_id: params[:memo_id])
    redirect_back(fallback_location: root_path)
  end
end
