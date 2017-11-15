class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :decks do |t|
      t.string :name
      t.string :manaCost
      t.integer :cmc
      t.string :colors
      t.string :types
      t.string :subtypes
      t.text :text
      t.integer :power
      t.integer :toughness
    end
  end
end
