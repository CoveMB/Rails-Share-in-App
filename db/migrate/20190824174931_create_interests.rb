class CreateInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :interests do |t|
      t.string :name
      t.references :interest_category, foreign_key: true

      t.timestamps
    end
  end
end
