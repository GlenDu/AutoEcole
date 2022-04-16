class TimeslotsController < ApplicationController
  def index
    @time_slots_all = Timeslots.all
  end

  def new
    @time_slots = Timeslot.new
  end

  def create
    day_slots = Calendar.all.map {|d| d.week_day.strftime('%A')}
    case day_slots
    when "Monday"
      start_slot = morning_start + (4 * 60 ** 2 )
      end_slot = morning_start + (5 * 60 ** 2 )
      final_slots = Timeslot.new(teacher_id: current_user.teacher.id,
      start_slot: looping_slots(start_slot).strftime('%H:%M'),
      end_slot: looping_slots(end_slot).strftime('%H:%M')
      )
      final_slots.save
    when "Tuesday", "Wednesday", "Thursday", "Friday"
      start_slot = morning_start
      end_slot = morning_start + 60 ** 2
      final_slots.save
    when "Saturday"
      start_slot = morning_start
      end_slot = morning_start + 60 ** 2
      final_slots = Timeslot.new(teacher_id: current_user.teacher.id,
      start_slot: loop_full_day(start_slot).strftime('%H:%M'),
      end_slot: loop_full_day(end_slot).strftime('%H:%M')
      )
      final_slots.save
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
    (0..4).each do |i|
      slot + i * 60 ** 2
    end
  end

  def loop_full_day(slot)
    (0..4).each do |i|
      start_slot + i * 60 ** 2
      start_slot + (i + 5) * 60 ** 2
    end
  end

end
