class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :event_type, foreign_key: true
      t.string :address
      t.text :description
      t.string :event_website
      t.references :organiser, foreign_key: true

      t.timestamps
    end
  end
end
