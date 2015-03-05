class CreatePricelists < ActiveRecord::Migration
  def change
    create_table :pricelists do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps null: false
    end
    add_index :pricelists, [:name], unique: true
  end
end
