class AddStuffToProducts < ActiveRecord::Migration[6.1]
  def change
    rename_column :products, :title, :name
  end
end
