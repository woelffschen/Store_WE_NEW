class AddActiveToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :active, :boolean
  end
end
