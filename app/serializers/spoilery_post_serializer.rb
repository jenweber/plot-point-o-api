class SpoileryPostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :game_id
end
