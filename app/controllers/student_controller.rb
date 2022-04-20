class StudentController < ApplicationController
  before_action :configure_sign_up_params, only: [:create]
  before_action :check_student, except: [:index]

  def index

  end

  def show
    @current_student = current_user.student
  end

  private
  def check_student
    unless current_user.student
        redirect_to '/', :alert => "Don't have permission!"
    end
  end

end
