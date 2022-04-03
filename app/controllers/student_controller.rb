class StudentController < ApplicationController

  def show
    @student_show = Student.find(current_student.id)
    @profil_std = ProfilStudent.find_by(student_id: @student_show.id )
  end

  def index
  end

end
