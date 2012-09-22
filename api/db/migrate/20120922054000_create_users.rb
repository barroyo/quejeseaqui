class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :facebook_id
      t.string :email_address
      t.string :access_token

      t.timestamps
    end
  end
end
