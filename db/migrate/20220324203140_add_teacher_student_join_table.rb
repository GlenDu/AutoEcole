class AddTeacherStudentJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :teachr_students do |t|
      t.belongs_to :teacher, null: false, foreign_key: true
      t.belongs_to :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
