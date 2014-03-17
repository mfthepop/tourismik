class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :surname
      t.date :date_of_birth

      t.timestamps
    end
  end
end
