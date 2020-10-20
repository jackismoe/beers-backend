class User < ApplicationRecord
  has_secure_password
  
  has_many :beers_users
  has_many :beers, through: :beers_users
end
