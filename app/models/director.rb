class Director < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :country, presence: true

  scope :by_new, ->{ order(updated_at: :desc) }
end
