class Tour < ActiveRecord::Base
	belongs_to :profile
	has_many :purchases
	has_one :location
		
end
