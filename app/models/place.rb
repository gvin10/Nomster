class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  validates :name, :description, :address, presence: true
  validates :name, :description, :address, length: {minimum: 3}
end
