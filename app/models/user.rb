class User < ActiveRecord::Base

   has_many :decks
   has_many :user_cards
   has_many :cards, through: :user_cards

   @@all = []

   def self.current_user
     @@all.last
   end

   def initialize
     super
     @@all << self
   end
   
end
