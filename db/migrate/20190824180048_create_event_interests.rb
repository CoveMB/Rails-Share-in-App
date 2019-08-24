class CreateEventInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :event_interests do |t|
      t.references :event, foreign_key: true
      t.references :interest, foreign_key: true

      t.timestamps
    end
  end
end
