class Place < ApplicationRecord
  belongs_to :user
  validates :name, :description, :address, presence: true
  validates :name, :description, :address, length: {minimum: 3}
end
