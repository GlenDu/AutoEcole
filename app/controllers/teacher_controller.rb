class TeacherController < ApplicationController

  def show
    @current_teacher = current_user.teacher
  end

end
