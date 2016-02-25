class SpoileryPost < ActiveRecord::Base
  belongs_to :game, inverse_of: :spoilery_posts, class_name: 'Game'
end
