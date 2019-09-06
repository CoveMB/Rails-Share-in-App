class CreateUserOrganisers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_organisers do |t|
      t.references :user, foreign_key: true
      t.references :organiser, foreign_key: true
    end
  end
end
