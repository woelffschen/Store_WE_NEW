class MakeFirstNameNotNull < ActiveRecord::Migration
  def change
    change_column(:users,:first_name,:string, :null => false)
  end
end
