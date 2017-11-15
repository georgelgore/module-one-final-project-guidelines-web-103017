class CreateDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :decks do |t|
      t.string  :name
      t.integer :user_id
      t.integer :rating
    end
  end
end
