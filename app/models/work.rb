class Work < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :release, presence: true
  validates :starring, presence: true
  validates :explanation, presence: true

  scope :by_new, ->{ order(updated_at: :desc) }
end
