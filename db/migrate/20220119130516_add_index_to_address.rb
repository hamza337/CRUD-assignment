class AddIndexToAddress < ActiveRecord::Migration[7.0]
  def change
    add_index :addresses, [:addressable_type, :addressable_id]
  end
end
