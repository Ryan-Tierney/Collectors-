class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.string :title 
      t.string :description 
      t.integer :total_worth
      t.timestamps
    end
  end
end
