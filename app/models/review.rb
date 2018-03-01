class Review < ApplicationRecord
  # Direct associations

  belongs_to :restaurant,
             :counter_cache => true

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :rating, :presence => true

  validates :rating, :numericality => { :less_than_or_equal_to => 5, :greater_than_or_equal_to => 1 }

end
