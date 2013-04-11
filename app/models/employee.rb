class Employee < ActiveRecord::Base
  attr_accessible :employee_profile_id, :supervisor_id
end
