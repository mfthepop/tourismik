class CreateWebusers < ActiveRecord::Migration
  def change
    create_table :webusers do |t|
      t.integer :user_id
      t.string :ip

      t.timestamps
    end
  end
end
