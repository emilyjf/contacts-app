class AddBio < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :bio, :string
  end
end
