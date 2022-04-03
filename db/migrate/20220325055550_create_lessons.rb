class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.date :date
      t.date :start_lesson
      t.date :end_lesson
      t.string :type_lesson
      t.text :remark1
      t.text :remark2
      t.text :remark3
      t.text :remark4

      t.belongs_to :teachr_students, foreign_key: true
      t.belongs_to :teachers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
