class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.integer :colour
      t.integer :size
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps null: false
    end
  end
end
