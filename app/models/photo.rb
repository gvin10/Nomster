class Photo < ApplicationRecord
  belongs_to :place
  belongs_to :user
  mount_uploader :picture, PictureUploader
  validates :caption, :picture, presence: true
  validates :caption, length: {minimum: 3}
end
