class Muvie < ActiveRecord::Base
has_many :users, through: :roles

validates :title, length: {minimum: 2}
validates :year, presence: true
validates :rating, presence: true, length: {in: 1..10}
validates :language, presence: true
validates :actor, presence: true
validates :director, presence: true
validates :producer, presence: true




end
