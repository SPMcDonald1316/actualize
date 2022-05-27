class MakeChangesToProducts < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :price, :decimal, precision: 6, scale: 2
    remove_column :products, :isbn, :string
  end
end
