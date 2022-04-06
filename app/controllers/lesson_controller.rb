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
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to lesson_index_path
    else
      render 'new'
      flash[:notice] = "Lesson non sauvegardé"
    end
  end

  private
  def lesson_params
    params.require(:lesson).permit(:remark1, :start_lesson, :end_lesson, :date )
  end
end
