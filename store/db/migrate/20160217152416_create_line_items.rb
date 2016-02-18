class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :title
      t.integer :quantity
      t.decimal :price
      t.decimal :total

      t.timestamps null: false
    end
  end
end
