class AddMoreStuffToProducts < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :description, :text
  end
end
