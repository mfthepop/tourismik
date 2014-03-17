class Tour < ActiveRecord::Base
	belongs_to :profile
	belongs_to :purchase
end
