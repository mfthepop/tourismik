class Tour < ActiveRecord::Base
	belongs_to :location
	has_many :users
	has_many :reviews, as: :reviewable
	has_many :purchases
	
	def self.search(search)
    if search
      where('quorum LIKE ?', "%#{search}%")
    else
      scoped
    end
  end


end
