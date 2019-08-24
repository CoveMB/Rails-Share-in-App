class AddSlugToOrganisers < ActiveRecord::Migration[5.2]
  def change
    add_column :organisers, :slug, :string
    add_index :organisers, :slug, unique: true
  end
end
