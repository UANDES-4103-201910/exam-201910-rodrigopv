class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :brand, null: false
      t.string :model, null: false
      t.string :variant
      t.integer :price, null: false
      t.string :shortdesc, null: false
      t.string :longdesc, null: false

      t.timestamps
    end
  end
end
