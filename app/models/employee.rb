class Employee < ApplicationRecord
    has_one :address as: :addressable
end
