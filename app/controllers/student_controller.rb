class StudentController < ApplicationController
  before_action :configure_sign_up_params, only: [:create]
  def index

  end

  def new
  end

  def show
    @current_student = current_user.student
  end

  def create
  end

end
