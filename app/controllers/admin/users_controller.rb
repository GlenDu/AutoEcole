class Admin::UsersController < ApplicationController

  def show
    @admin = User.find(params[:id])
  end

end
