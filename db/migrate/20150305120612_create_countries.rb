class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps null: false
    end

    add_index :countries, [:name], unique: true
  end
end
