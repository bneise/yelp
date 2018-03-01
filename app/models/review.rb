class Review < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :rating, :presence => true

  validates :rating, :numericality => { :less_than_or_equal_to => 5, :greater_than_or_equal_to => 1 }

end
