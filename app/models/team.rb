class Team < ActiveRecord::Base
  attr_accessible :name, :supervisor_id, :member_ids
  
  belongs_to :supervisor, :class_name => :employee #supervisor
  has_many :team_memberships
  has_many :members, :through => :team_memberships, :source => :employee
  belongs_to :supervisor, :class_name => "Employee"
end
