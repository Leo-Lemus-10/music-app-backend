class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :spotify_link, :picture
end
