class CreateCategoryEntities < ActiveRecord::Migration
  def change
    create_table :category_entities do |t|
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end
