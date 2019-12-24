class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :icon_gif
end
