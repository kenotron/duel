class Match < ActiveRecord::Base
  belongs_to :challenger, :class_name => "Player"
  belongs_to :player
end
