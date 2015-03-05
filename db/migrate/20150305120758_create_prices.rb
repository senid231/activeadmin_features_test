class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.decimal :amount, null: false
      t.integer :city_id, null: false
      t.integer :pricelist_id, null: false

      t.timestamps null: false
    end

    add_index :prices, [:pricelist_id, :city_id], unique: true
  end
end
