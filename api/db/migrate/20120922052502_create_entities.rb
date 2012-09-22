class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :description
      t.string :name
      t.references :category_entity

      t.timestamps
    end
    add_index :entities, :category_entity_id
  end
end
