class CreateRegisteredUsers < ActiveRecord::Migration
  def change
    create_table :registered_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
