class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.belongs_to :student, index: true
      t.references :order, index: true

      t.timestamps
    end
  end
end
