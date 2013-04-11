class Employee < ActiveRecord::Base
  attr_accessible :employee_profile_id, :supervisor_id
  
  has_many :team_memberships
  belongs_to :supervisor
   accepts_nested_attributes_for :employee_profile, :
end
