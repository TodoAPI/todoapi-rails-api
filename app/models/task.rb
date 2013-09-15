class Task < ActiveRecord::Base
  # Associations
  belongs_to :list

  # Validations
  validates_uniqueness_of :title, scope: :list_id
end
