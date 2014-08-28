class RenamePasswordAndRemoveSalt < ActiveRecord::Migration
  def change
  	rename_column :users, :password, :password_digest
  	remove_column :users, :salt
  end
end
