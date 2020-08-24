class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :nombre
      t.decimal :retail_price
      t.decimal :wholesale_price
      t.decimal :sale_price
      t.integer :stock

      t.timestamps
    end
  end
end
