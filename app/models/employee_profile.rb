class EmployeeProfile < ActiveRecord::Base
  attr_accessible :employee_id, :name, :height, :age, :favorite_food, :birthdate, :salary, :photo
   validates :name, :presence => true
  
  belongs_to :employee, :inverse_of => :employee_profile
  
end
