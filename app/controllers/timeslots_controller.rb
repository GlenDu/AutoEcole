class TimeslotsController < ApplicationController
  def index
    @time_slots_all = Timeslot.all
  end

  def new
    @time_slots = Timeslot.new
  end

  def create
    day_slots = Calendar.all.map {|d| d.week_day.strftime('%A')}
    day_slots.map do |day|
      if day == "Monday"
        length1 = looping_slots(morning_start + (4 * 3600)).length - 1
        (0..length1).each do |x|
          final_slots = Timeslot.new(teacher_id: current_user.teacher.id,
          start_slot: looping_slots(morning_start + (4 * 3600 ))[x].hour.to_s,
          end_slot: looping_slots(morning_start + (5 * 3600))[x].hour.to_s,
          )
          final_slots.save
        end
      elsif day == "Tuesday" || day == "Wednesday" || day == "Friday" || day == "Thursday"
        length2 = loop_full_day(morning_start).length - 1
        (0..length2).each do |x|
          final_slots = Timeslot.new(teacher_id: current_user.teacher.id,
          start_slot: loop_full_day(morning_start)[x].hour.to_s,
          end_slot: loop_full_day(morning_start + 3600)[x].hour.to_s
          )
          final_slots.save
        end
      elsif day == "Saturday"
        length2 = loop_full_day(morning_start).length - 1
        (0..length2).each do |x|
          final_slots = Timeslot.new(teacher_id: current_user.teacher.id,
          start_slot: loop_full_day(morning_start)[x].hour.to_s,
          end_slot: loop_full_day(morning_start + 3600)[x].hour.to_s
          )
          final_slots.save
        end
      end
    end
  end

  private
=begin
  def fill_slots(start_slot, end_slot)
    case @day_slots.week_day.strftime('%A')
    when "Monday"
      start_slot = morning_start + (4 * 60 ** 2 )
      end_slot = morning_start + (5 * 60 ** 2 )
      looping_slots(start_slot)
      looping_slots(end_slot)
    when "Tuesday", "Wednesday", "Thursday", "Friday"
      start_slot = morning_start
      end_slot = morning_start + 60 ** 2
      loop_full_day(start_slot, end_slot)
    when "Saturday"
      start_slot = morning_start
      end_slot = morning_start + 60 ** 2
      looping_slots(start_slot, end_slot)
    end
  end
=end

  def morning_start
    Time.parse("08:00")
  end

  def looping_slots(slot)
    (0..4).map do |i|
      slot + i * 3600
    end
  end

  def loop_full_day(slot)
    [0,1,2,3,4,6,7,8,9].map do |i|
      slot + (i * 3600)
    end
  end

end
