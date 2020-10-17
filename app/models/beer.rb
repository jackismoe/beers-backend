class Beer < ApplicationRecord
  has_many :beers_users
  has_many :users, through: :beers_users
end
