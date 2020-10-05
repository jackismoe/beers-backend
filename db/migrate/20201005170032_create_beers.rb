class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :brand
      t.string :name
      t.string :style
      t.string :hop
      t.string :yeast
      t.string :malts
      t.string :ibu
      t.string :alcohol
      t.string :blg

      t.timestamps
    end
  end
end
