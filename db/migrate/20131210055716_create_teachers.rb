class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :fname
      t.date :dob
      t.string :phone
      t.string :gender
      t.string :experience
      t.string :subjects

      t.timestamps
    end
  end
end
