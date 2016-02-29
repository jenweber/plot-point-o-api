class SpoileryPostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :game_id, :game
end

# refactoring - eliminate use of :game id since it's available through game
