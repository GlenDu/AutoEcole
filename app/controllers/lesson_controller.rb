class LessonController < ApplicationController

  def show
  end

  def create
    create_lesson = Lesson.new(student_id: current_user.student.id, timeslot_id: params[:timeslot_id])
    if current_user.student.credits == nil || current_user.student.credits < 1
      flash[:erreur] = "Erreur, vous n'avez pas assez des credits pour le créneau !"
      redirect_to calendar_index_path
    elsif create_lesson.save
      redirect_to student_show_path
    else
      flash["error"] = "Vous n'avez pas crée la lesson"
    end
  end

  private

end
