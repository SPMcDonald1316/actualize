class CreateContactGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_groups do |t|
      t.integer :contact_id
      t.integer :group_id

      t.timestamps
    end
  end
end
