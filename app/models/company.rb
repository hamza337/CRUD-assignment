class Company < ApplicationRecord

  
    has_one :address as: :addressable
    
    validates :name, presence: true , uniqueness: true
    validates :phone_number, length: { minimum: 7 }
    

    after_create :create_employee
    private
    def create_employee
        Employee.create(name: "Dummy" , designation: "Dummy2" , grade: 5 , company_id: id)
         
    end

    
    
end
