class CategorySerializer < ActiveModel::Serializer
  has_many :questions
  attributes :id, :name, :questions

end
