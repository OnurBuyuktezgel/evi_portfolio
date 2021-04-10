class Lecture < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  enum status: { passive: 0, active: 1 }
end
