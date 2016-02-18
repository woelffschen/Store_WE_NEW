class AddArticleIdToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :article_id, :integer
  end
end
