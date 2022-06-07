class User < ApplicationRecord
  before_save { self.emai = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 100 },format: {with: VALID_EMAIL_REGEX }, uniquenss: true
  has_secure_password
  validates :passwore:, presence: true, length: {minimum: 6 }
end