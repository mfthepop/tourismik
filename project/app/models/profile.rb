class Profile < ActiveRecord::Base
	belongs_to :ragisterd_user
	has_many :tours
	has_many :purchases
	
	
end
