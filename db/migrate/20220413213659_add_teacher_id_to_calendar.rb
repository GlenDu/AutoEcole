class AddTeacherIdToCalendar < ActiveRecord::Migration[6.1]
  def change
    add_column :calendars, :teacher_id, :integer
    add_foreign_key :calendars, :teachers 
  end
end
