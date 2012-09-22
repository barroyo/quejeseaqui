class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.string :title
      t.string :permalink
      t.references :user
      t.string :body
      t.references :entity
      t.string :proposal

      t.timestamps
    end
    add_index :complaints, :user_id
    add_index :complaints, :entity_id
  end
end
