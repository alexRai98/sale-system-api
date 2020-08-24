class AddProductRefToBusiness < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :business, foreign_key: true
  end
end
