class CreateOrganisers < ActiveRecord::Migration[5.2]
  def change
    create_table :organisers do |t|
      t.string :name
      t.references :organiser_type, foreign_key: true
      t.string :address
      t.text :description
      t.string :website

      t.timestamps
    end
  end
end
