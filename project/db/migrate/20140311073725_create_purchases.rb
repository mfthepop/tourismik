class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :purchase_id
      t.integer :ammount
      t.date :date_of_purchase
      t.integer :num_of_reservations

      t.timestamps
    end
  end
end
