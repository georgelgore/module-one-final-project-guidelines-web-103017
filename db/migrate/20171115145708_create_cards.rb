class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :manaCost
      t.string :cmc
      t.string :color1
      t.string :color2
      t.string :types
      t.string :subtype1
      t.string :subtype2
      t.text :text
      t.string :power
      t.string :toughness
    end
  end
end
