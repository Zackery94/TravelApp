class Trip < ActiveRecord::Base

belongs_to :location 
has_many :comments, :dependent => :destroy
	validates :name, presence: true
	validates :rating, presence: true
	validates :people, presence: true
 has_many :comments, :dependent => :destroy
	def average_stars
		comments.average(:stars) 
	end 
	


end
