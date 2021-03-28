class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings

  include ActiveModel::Validations
  # Basic usage.  Defaults to minimum entropy of 18 and no dictionary checking
  validates :password, password_strength: true
end
