class NoSpoilersPost < ActiveRecord::Base
  belongs_to :game, inverse_of: :no_spoilers_posts, class_name: 'Game'
end
