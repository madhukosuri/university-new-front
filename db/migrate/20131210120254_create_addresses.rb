class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :district
      t.string :city
      t.string :pincode
      t.string :desc
      t.integer :addressable_id
      t.string :addressable_type

      t.timestamps
    end
  end
end
