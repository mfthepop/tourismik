class Purchase < ActiveRecord::Base
	belongs_to :profile
	has_one :tour
end
