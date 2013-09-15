class List < ActiveRecord::Base
  # Associations
  has_many :tasks

  # Validations
  validates_uniqueness_of :name
end
