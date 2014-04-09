class Tour < ActiveRecord::Base
	has_many :users
	has_many :reviews, as: :reviewable
	has_many :purchases
end
