class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :fname
      t.date :dob
      t.string :phone
      t.string :gender
      t.string :standard

      t.timestamps
    end
  end
end
