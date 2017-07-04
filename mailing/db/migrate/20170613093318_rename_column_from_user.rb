class RenameColumnFromUser < ActiveRecord::Migration[5.0]
  def change
    rename_column :user, :login, :message 
  end
end
