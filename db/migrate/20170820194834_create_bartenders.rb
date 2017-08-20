class CreateBartenders < ActiveRecord::Migration[5.1]
  def change
    create_table :bartenders do |t|
      t.string :name
      t.integer :drink_category_id
      t.references :drink_category, foreign_key: true

      t.timestamps
    end
  end
end
