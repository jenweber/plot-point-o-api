class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :developer, :platforms
end
