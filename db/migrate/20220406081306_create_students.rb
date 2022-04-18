class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.date :year_birth
      t.string :postal_code
      t.string :phone_nb

      t.belongs_to :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
