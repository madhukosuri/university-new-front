class AddColumnToCities < ActiveRecord::Migration
  def change
  	add_column :cities, :district_id, :integer
  end
end
