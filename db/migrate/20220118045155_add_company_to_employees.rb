class AddCompanyToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :company
  end
end
