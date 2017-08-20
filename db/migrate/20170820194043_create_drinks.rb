class CreateDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.integer :price
      t.integer :drink_category_id
      t.references :drink_category, foreign_key: true

      t.timestamps
    end
  end
end
