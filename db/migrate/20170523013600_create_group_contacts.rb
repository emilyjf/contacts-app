class CreateGroupContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :group_contacts do |t|
      t.integer :contact_id
      t.integer :category_id

      t.timestamps
    end
  end
end
