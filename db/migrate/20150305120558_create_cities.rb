class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.integer :country_id, null: false
      t.text :description

      t.timestamps null: false
    end

    add_index :cities, [:name, :country_id], unique: true
  end
end
