class Team < ActiveRecord::Base
  attr_accessible :name, :supervisor_id
  
  belongs_to :employee #supervisor
  has_many :team_memberships
end
