class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :designation
      t.integer :grade

      t.timestamps
    end
  end
end
