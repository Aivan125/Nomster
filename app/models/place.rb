class Place < ApplicationRecord
  belongs_to :user
  has_many :comments 
  has_many :photos

  
  validates :name, length: {minimum: 4}, presence: true
  validates :address, :description, presence: true
  
  geocoded_by :address
  after_validation :geocode 
end
