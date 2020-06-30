class User < ApplicationRecord
  has_many :songs
  has_secure_password
end
