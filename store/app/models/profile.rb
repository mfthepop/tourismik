class Profile < ActiveRecord::Base
	belongs_to :user
	has_many :purchases
	#has_many :comments, as: :commentable
end
