class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :favorites
  has_many :favorites 
end
