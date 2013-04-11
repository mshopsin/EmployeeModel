class EmployeeProfile < ActiveRecord::Base
  attr_accessible :employee_id, :name
  
  belongs_to :employee, :inverse_of => :employee_profile
  validates_presence_of :employee
end
