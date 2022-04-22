class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.date :date
      t.text :remark

      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :timeslot, null: false, foreign_key: true
      t.timestamps
    end
  end
end
