class CalendarController < ApplicationController

  def index
    @calendar_all = Calendar.all
  end

  def new
    @calendar = Calendar.new
    @current_teacher_id = current_user.teacher.id
  end

  def create
    (0..30).each do |i|
      iterated_day = Date.today + i
      calendar = Calendar.new(:teacher_id => current_user.teacher.id,
      :week_day => iterated_day,
      :day_date => iterated_day)
      calendar.save
    end
    redirect_to calendar_index_path
  end

  def show
  end

end
