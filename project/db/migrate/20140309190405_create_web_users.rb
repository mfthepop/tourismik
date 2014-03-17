class CreateWebUsers < ActiveRecord::Migration
  def change
    create_table :web_users do |t|
      t.integer :user_id
      t.string :ip

      t.timestamps
    end
  end
end
