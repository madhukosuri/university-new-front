class AddColumnToTeachers < ActiveRecord::Migration
  def change
  	add_column :teachers, :email, :string
  end
end
