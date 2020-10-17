class CreateBeersUsersWithId < ActiveRecord::Migration[6.0]
  def change
    create_table :beers_users do |t|
      t.belongs_to :user, null: false, index: true
      t.belongs_to :beer, null: false, index: true
    end
  end
end
