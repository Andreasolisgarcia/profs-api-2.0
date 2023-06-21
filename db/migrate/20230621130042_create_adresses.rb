class CreateAdresses < ActiveRecord::Migration[7.0]
  def change
    create_table :adresses do |t|
      t.string :adress
      t.string :city
      t.string :zipcode
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
