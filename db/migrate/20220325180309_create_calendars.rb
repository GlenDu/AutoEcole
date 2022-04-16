class CreateCalendars < ActiveRecord::Migration[6.1]
  def change
    create_table :calendars do |t|
      t.date :start_date
      t.date :end_date
      t.date :week_day
      t.date :day_date

      t.timestamps
    end
  end
end
