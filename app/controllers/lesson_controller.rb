class LessonController < ApplicationController
  def new
    @lesson = Lesson.new
  end
  
  def index
    @all_lessons = Lesson.all
  end

  def show
  end

  def create
    @lesson = Lesson.new(:student_id current_user.student.id, :timeslot_id @timeslot_selected_id)
    if @lesson.save
      redirect_to lesson_index_path
    else
      render 'new'
      flash[:notice] = "Lesson non sauvegardé"
    end
  end

  private
  def lesson_params
    #params.require(:timeslot).permit(:id)
  end
end
