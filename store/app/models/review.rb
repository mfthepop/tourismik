class Review < ActiveRecord::Base
	belongs_to :reviewable, polymorphic: true
	has_many :comments, as: :commentable
end
