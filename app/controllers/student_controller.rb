class StudentController < ApplicationController
  before_action :configure_sign_up_params, only: [:create]
  before_action :check_student, except: [:index]

  def index
    @students = Student.all
  end

  def show
    @current_student = current_user.student
    @lesson = Lesson.where(student_id: current_user.student.id)
  end

  private
  def check_student
    unless current_user.student || current_user.admin == true
        redirect_to '/', :alert => "Don't have permission!"
    end
  end

end
