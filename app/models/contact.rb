class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :email, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i, on: create }
  validates :message, presence: true
end
