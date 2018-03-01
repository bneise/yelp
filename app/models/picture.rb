class Picture < ApplicationRecord
  mount_uploader :image_url, ImageUrlUploader

  # Direct associations

  belongs_to :review

  # Indirect associations

  # Validations

end
