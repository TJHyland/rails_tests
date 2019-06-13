class School < ApplicationRecord
  # Validations
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :address
  validates_presence_of :principal
  validates_presence_of :capacity
  validates :capacity, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 52000}
  validates_presence_of :private_school
  # Associations
  has_many :students, dependent: :destroy
end
