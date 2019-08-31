class AddIconToInterestCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :interest_categories, :icon, :string
  end
end
