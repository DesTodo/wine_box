class User < ApplicationRecord
  has_secure_password
  after_initialize :init

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :role, presence: true

  enum role: ["guest", "subscriber", "client", "admin"]

   def init
     self.role ||= 1 if self.role == nil
       #self.address ||= build_address #set a default association
   end
end
