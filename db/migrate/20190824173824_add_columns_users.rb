class AddColumnsUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :neighborhood, :string
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :bio, :text
    add_column :users, :admin, :boolean, default: false
  end
end
