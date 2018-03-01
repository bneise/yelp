class Reply < ApplicationRecord
  # Direct associations

  belongs_to :ownership

  belongs_to :review

  # Indirect associations

  # Validations

end
