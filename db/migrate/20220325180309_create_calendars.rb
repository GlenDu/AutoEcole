class CreateCalendars < ActiveRecord::Migration[6.1]
  def change
    create_table :calendars do |t|
      t.date :start_date
      t.date :end_date
      t.date :reference_day

      t.timestamps
    end
  end
end
