class CollectionSerializer < ActiveModel::Serializer
  has_many :items 
  attributes :id, :title, :description, :total_worth
end
