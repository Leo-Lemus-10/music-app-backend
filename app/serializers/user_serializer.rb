class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_pic, :favorites
  has_many :favorites 
end
