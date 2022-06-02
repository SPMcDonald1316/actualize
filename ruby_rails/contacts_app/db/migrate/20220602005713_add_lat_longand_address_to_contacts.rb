class AddLatLongandAddressToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :lat, :decimal, precision: 8, scale: 5
    add_column :contacts, :long, :decimal, precision: 8, scale: 5
    add_column :contacts, :address, :string
  end
end
