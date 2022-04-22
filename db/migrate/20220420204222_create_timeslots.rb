class CreateTimeslots < ActiveRecord::Migration[6.1]
  def change
    create_table :timeslots do |t|
      t.string :start_slot
      t.string :end_slot

      t.belongs_to :teacher, null: false, foreign_key: true
      t.belongs_to :calendar, foreign_key: true
      t.timestamps
    end
  end
end
