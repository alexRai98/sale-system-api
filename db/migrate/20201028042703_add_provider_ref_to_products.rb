class AddProviderRefToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :providers, :products, foreign_key: true
  end
end
