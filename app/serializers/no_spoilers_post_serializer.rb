class NoSpoilersPostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :game_id
end
