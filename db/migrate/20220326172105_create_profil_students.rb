class CreateProfilStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :profil_students do |t|
      t.string :first_name
      t.string :last_name
      t.date :year_birth
      t.string :postal_code
      t.integer :phone
      t.belongs_to :students, null: false, foreign_key: true

      t.timestamps
    end
  end
end
