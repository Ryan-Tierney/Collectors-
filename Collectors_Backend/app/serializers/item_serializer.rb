class ItemSerializer < ActiveModel::Serializer
  belongs_to :collection
  attributes :id, :name, :description, :worth, :collection_id
end
