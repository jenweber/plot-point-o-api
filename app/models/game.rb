class Game < ActiveRecord::Base
  has_many :spoilery_posts, inverse_of: :games, foreign_key: 'games'
  has_many :no_spoilers_posts, inverse_of: :games, foreign_key: 'games'
end
