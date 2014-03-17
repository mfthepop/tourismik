class Profile < ActiveRecord::Base
	belongs_to :webusers
	has_many :tours
end
