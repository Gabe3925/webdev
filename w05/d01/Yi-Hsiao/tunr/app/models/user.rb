class User < ActiveRecord::Base
  before_save :normalize_fields

  validates :name,
    presence: true, length: { maximum: 50 }
  validates :email,
    presence: true,
    uniqueness: { case_sensitive: false },
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password,
    presence: true,
    length: { minimum: 8 }

  has_secure_password

  # generates remember token
  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  # hashes a string
  def self.hash(string)
    Digest::SHA1.hexdigest string
  end

  private
  def normalize_fields
    name.capitalize!
    email.downcase!
  end
end
