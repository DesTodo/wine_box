class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  #validates :role, presence: true

  enum role: ["guest", "subscriber", "client", "admin"]

end
