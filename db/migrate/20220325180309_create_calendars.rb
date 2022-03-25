class CreateCalendars < ActiveRecord::Migration[6.1]
  def change
    create_table :calendars do |t|
      t.date :start_date
      t.date :end_date
      t.string :time_slots
      t.belongs_to :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
