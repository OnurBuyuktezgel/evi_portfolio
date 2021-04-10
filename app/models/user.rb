class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :lectures, through: :bookings
  has_one_attached :photo

  # For activeadmin
  def name
    "#{first_name} #{last_name}"
  end
end
