class AddProductRefToProvider < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :providers, foreign_key: true
  end
end
