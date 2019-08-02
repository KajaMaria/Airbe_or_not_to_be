class User < ApplicationRecord
  has_many :listings, dependent: :destroy
  has_many :requests, dependent: :destroy
  has_secure_password
end
