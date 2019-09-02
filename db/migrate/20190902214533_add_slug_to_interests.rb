class AddSlugToInterests < ActiveRecord::Migration[5.2]
  def change
    add_column :interests, :slug, :string
    add_index :interests, :slug, unique: true
  end
end
