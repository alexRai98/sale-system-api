class ChangeColumnNombreToProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :nombre, :name
  end
end
