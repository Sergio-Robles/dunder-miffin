class Dog < ApplicationRecord
    
    has_many :employees

    def self.up_for_adoption 
        self.all.select { |d| d.employees.length == 0}
    end
end
