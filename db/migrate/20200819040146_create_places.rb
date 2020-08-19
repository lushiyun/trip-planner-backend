class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :place_id
      t.string :category
      t.references :day, null: false, foreign_key: true

      t.timestamps
    end
  end
end
