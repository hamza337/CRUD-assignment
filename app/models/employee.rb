class Employee < ApplicationRecord
    validates :name, presence: true
    validates :designation, presence: true, length: { minimum: 10 }
end
