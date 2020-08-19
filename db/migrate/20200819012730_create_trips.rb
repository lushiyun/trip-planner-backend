class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :city
      t.decimal :lat
      t.decimal :lng

      t.timestamps
    end
  end
end
