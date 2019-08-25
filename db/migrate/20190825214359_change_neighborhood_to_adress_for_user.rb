class ChangeNeighborhoodToAdressForUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :neighborhood, :address
  end
end
