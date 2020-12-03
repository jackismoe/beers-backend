class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.text :brand
      t.text :name
      t.text :style
      t.text :hop
      t.text :yeast
      t.text :malts
      t.text :ibu
      t.text :alcohol
      t.text :blg

      t.timestamps
    end
  end
end
