class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.date :date
      t.date :start_date
      t.date :end_date
      t.belongs_to :teacher_student, null: false, foreign_key :true
      t.belongs_to :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
