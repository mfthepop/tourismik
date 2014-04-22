class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_one :profile
	has_many :reviews
	has_many :comments
  has_many :bookings
	has_many :tours, through: :bookings

end
