class CalendarController < ApplicationController
  before_action :check_teacher, except: [:index, :show]

  def index
    @calendar_all = Calendar.all
    #Lesson.new(:student_id current_user.student.id, :timeslot select_timeslot)
  end

  def show
    @calendar_selected = Calendar.find_by(params[:id])
  end

  def new
    @calendar = Calendar.new
  end

  def create
    (0..30).each do |i|
      iterated_day = Date.today + i
      calendar = Calendar.new(:teacher_id => current_user.teacher.id,
      :reference_day => iterated_day)
      calendar.save
    end
    redirect_to calendar_index_path
  end

  private
  def check_teacher
    unless current_user.teacher
        redirect_to '/', :alert => "Don't have permission!"
    end
  end

  def select_calendar
    params.require(:calendar).permit(:id)
  end

  def select_timeslot
    params.require(:timeslot).permit(:end_slot)
  end

end
