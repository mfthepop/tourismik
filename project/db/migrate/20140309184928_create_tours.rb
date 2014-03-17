class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.integer :tour_id
      t.date :departure
      t.integer :qourum

      t.timestamps
    end
  end
end
