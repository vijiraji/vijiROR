class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :gender, :place
end
