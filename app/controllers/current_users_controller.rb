class CurrentUsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_user

  def edit
  end

  def update
    @current_user.assign_attributes(current_user_params)
    if @current_user.save
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def set_current_user
    @current_user = current_user
  end

  def current_user_params
    params.require(:user).permit(:password)
  end
end
