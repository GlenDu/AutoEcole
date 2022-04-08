class StudentController < ApplicationController
  before_action :configure_sign_up_params, only: [:create]
  def index

  end

  def new
  end

  def show
    @current_student = Student.find_by(user_id: current_user.id)
  end

  def create
  end

end
