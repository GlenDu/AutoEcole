class CalendarController < ApplicationController
  before_action :check_teacher, except: [:index, :show]

  def index
    @calendar_all = Calendar.all
    #Calendar.where(:all, conditions: [@calendar_all.reference_day < Date.today])
  end

  def show
    @calendar_selected = Calendar.find(params[:id])
  end

  def new
    @calendar = Calendar.new
  end

  def create
    (0..end_date_loop).each do |i|
      iterated_day = start_date_selected + i #Date.today + i
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

  def end_date_loop
    (end_date_selected - start_date_selected).to_i
  end

  def start_date_selected
    date_h1 = start_date.values.join('-')
    return Date.strptime(date_h1, "%d-%m-%Y")
  end

  def end_date_selected
    date_h2 = end_date.values.join('-')
    return Date.strptime(date_h2, "%d-%m-%Y")
  end

  def start_date
    params.require(:calendar).permit(:start_date)
  end

  def end_date
    params.require(:calendar).permit(:end_date)
  end

end
