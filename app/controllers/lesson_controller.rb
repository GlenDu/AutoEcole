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
    #@lesson = Lesson.new(lesson_params)
  end

  private
  def lesson_params
    params.require(:lesson).permit(:remark1, :remark2, :remark3, :remark4, :type_lesson, :date )
  end
end
