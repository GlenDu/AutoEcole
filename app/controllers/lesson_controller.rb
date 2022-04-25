class LessonController < ApplicationController

  def show
  end

  def create
    create_lesson = Lesson.new(student_id: current_user.student.id, timeslot_id: params[:timeslot_id])
    if create_lesson.save
      redirect_to student_show_path
    else
      flash["error"] = "Vous n'avez pas crée la lesson"
    end
  end

  private
  def lesson_params
    #params.require(:timeslot).permit(:id)
  end
end
