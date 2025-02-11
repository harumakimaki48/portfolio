class AdminsController < ApplicationController
  def new
    @admin = Admin.new
  end
  
  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      redirect_to admin_dashboard_index_path, notice: "Admin successfully created."
    else
      render :new
    end
  end
  
  private
  
  def admin_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end
