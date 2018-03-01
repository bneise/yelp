class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :ownerships,
             :dependent => :destroy

  has_many   :taggings,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  has_many   :tags,
             :through => :taggings,
             :source => :tag

  has_many   :users,
             :through => :reviews,
             :source => :user

  # Validations

end
