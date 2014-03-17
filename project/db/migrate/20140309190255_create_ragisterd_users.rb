class CreateRagisterdUsers < ActiveRecord::Migration
  def change
    create_table :ragisterd_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
