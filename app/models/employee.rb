class Employee < ActiveRecord::Base
  attr_accessible :employee_profile_id, :supervisor_id, :employee_profile_attributes
  
  has_many :team_memberships
  has_many :teams, :through => :team_membership
  has_one :employee_profile
  belongs_to :supervisor, :class_name => "Employee"
   accepts_nested_attributes_for :employee_profile
   
   
   def name
     employee_profile.name
   end
   
end
