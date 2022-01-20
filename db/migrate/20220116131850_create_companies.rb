class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :location
      t.string :phone_number
      t.integer :no_of_employee
      t.string :company_type
      t.string :created_on
      t.string :updated_on

      t.timestamps
    end
  end
end
