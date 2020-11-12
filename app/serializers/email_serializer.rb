class EmailSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :message, :phonenumber
end
