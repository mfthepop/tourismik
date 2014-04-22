class Tour < ActiveRecord::Base
	belongs_to :location
	has_and_belongs_to_many :users
	has_many :reviews, as: :reviewable
	has_many :bookings
	has_many :users, :through => :bookings
	
	def self.search(search)
    if search
      where('quorum LIKE ?', "%#{search}%")
    else
      scoped
    end
	end



	def bookings_total
		self.users.count
	end


end
