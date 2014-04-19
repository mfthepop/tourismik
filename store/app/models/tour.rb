class Tour < ActiveRecord::Base
	belongs_to :location
	has_and_belongs_to_many :users
	has_many :reviews, as: :reviewable
	has_many :purchases

	after_initialize :init
	
	def self.search(search)
    if search
      #where('departure_location LIKE ?', "%#{search}%")
      where("departure_time LIKE ? OR departure_location like ?", "%#{search}%","%#{search}%")
      # where('departure_time LIKE ?', "%#{search}%")
    else
      scoped
    end
	end

	def init
		self.registered = 0
	end


end
