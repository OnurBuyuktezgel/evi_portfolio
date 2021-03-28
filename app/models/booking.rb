class Booking < ApplicationRecord
  belongs_to :lecture
  belongs_to :user
end
