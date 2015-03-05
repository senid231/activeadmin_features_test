class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.text :description
      t.integer :pricelist_id
      t.decimal :balance, null: false, default: 0

      t.timestamps null: false
    end
  end
end
