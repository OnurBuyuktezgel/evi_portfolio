class Booking < ApplicationRecord
  belongs_to :lecture
  belongs_to :user

  enum status: { pending: 0, confirmed: 1, cancelled: 2 }
  validates :message, presence: true
  validates :desired_time, presence: true
end
