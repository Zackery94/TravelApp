class Location < ActiveRecord::Base

has_many :trips, dependent: :destroy

validates :name, presence: true 
validates :name, uniqueness: true 



end
