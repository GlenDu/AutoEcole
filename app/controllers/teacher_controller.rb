class TeacherController < ApplicationController
  def index
  end

  def show
    @current_teacher = current_user.teacher
  end

end
