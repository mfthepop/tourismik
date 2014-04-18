class Tour < ActiveRecord::Base
	belongs_to :location
	has_many :users
	has_many :reviews, as: :reviewable
	has_many :purchases
	
	def self.search(search)
    if search
      #where('departure_location LIKE ?', "%#{search}%")
      where("departure_time LIKE ? OR departure_location like ?", "%#{search}%","%#{search}%")
      # where('departure_time LIKE ?', "%#{search}%")
    else
      scoped
    end
  end


end
