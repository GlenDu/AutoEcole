class CalendarController < ApplicationController

  def index
    @calendar_all = Calendar.all
    @test = fill_slots
  end

  def new
    @current_teacher_id = current_user.teacher.id
    @calendar = Calendar.new
  end

  def create
    @calendar = Calendar.new(calendar_params)
    if @calendar.save
      redirect_to calendar_index_path
    else
      render 'new'
      flash[:notice] = 'Pas de création de calendrier!'
    end
  end

  def show
  end

  private
  def fill_slots
    30.times do |i|
      starting_day = @calendar_all.first.start_date + i
      case starting_day.strftime('%A')
      when 'Monday'
        [14..17]
      when 'Tuesday', 'Wednesday','Thursday','Friday'
        [8..12, 14..17]
      when 'Saturday'
        [8..12]
      end
    end
  end

  def calendar_params
    params.require(:calendar).permit(:start_date, :time_slots, :end_date, :teacher_id)
  end

end
