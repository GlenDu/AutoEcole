class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_nb
      t.string :description

      t.timestamps
    end
  end
end
