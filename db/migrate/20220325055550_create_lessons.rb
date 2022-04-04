class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.date :date
      t.datetime :start_lesson
      t.datetime :end_lesson
      t.text :remark1

      t.timestamps
    end
  end
end
