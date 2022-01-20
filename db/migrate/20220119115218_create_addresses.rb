class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.integer :house_no
      t.integer :street_no
      t.string :city
      t.integer :zip_code
      t.bigint  :addressable_id
      t.string  :addressable_type

      t.timestamps
    end
   
  end

end
