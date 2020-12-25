class Work < ApplicationRecord
  mount_uploader :image, WorkImageUploader

  belongs_to :director
  has_many :work_genres, dependent: :destroy
  has_many :genres, through: :work_genres

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :release, presence: true
  validates :starring, presence: true
  validates :explanation, presence: true

  scope :by_alphabet, ->{ order(title: :asc) }
  scope :by_position, ->{ order(position: :asc) }
  # scope :by_new, ->{ order(updated_at: :desc) }
  acts_as_list
end
