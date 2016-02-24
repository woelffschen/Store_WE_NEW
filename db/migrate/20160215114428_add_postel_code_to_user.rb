class AddPostelCodeToUser < ActiveRecord::Migration
  def change
    add_column :users, :postel_code, :integer
  end
end
