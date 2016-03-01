class SpoileryPost < ActiveRecord::Base
  belongs_to :game, inverse_of: :spoilery_posts, class_name: 'Game'
  belongs_to :user, inverse_of: :spoilery_posts, class_name: 'User'
end
