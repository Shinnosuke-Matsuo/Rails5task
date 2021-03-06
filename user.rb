class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :password, length: { in: 8..32 }
  validates :password, presence: true, format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]/z\}
  validates :email, presence: true, format: {with: /\A\w+@\w+.\w/z\}
  validates :name, length: { maximum: 15 }
  
  has_secure_password
end