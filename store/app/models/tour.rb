class Tour < ActiveRecord::Base
	belongs_to :location
	has_many :users
	has_many :reviews, as: :reviewable
	has_many :purchases


end
