class CreateProductsProviderJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :products, :providers do |t|
      t.index :product_id
      t.index :provider_id
    end
  end
end
