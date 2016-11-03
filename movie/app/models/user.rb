class User < ActiveRecord::Base
	has_many :muvies, through: :roles 

	validates :user_name, presence: true
	validates :user_age, presence: true
	validates :role, presence: true
	validates :gender, presence: true

end
