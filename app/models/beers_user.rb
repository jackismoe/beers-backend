class BeersUser < ActiveRecord::Base
  belongs_to :user, optional: true
  belongs_to :beer
end