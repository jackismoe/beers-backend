class UserSerializer < ApplicationController
  def initialize(user)
    @user = user
  end

  def to_serialized_json
    @user.to_json(only: [:email, :phone])
  end
end

