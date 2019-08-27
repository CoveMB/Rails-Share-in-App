class RenameDateColumnFromEvents < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :date, :start_date
  end
end
