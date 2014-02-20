class ChangeHashColumnInUsers < ActiveRecord::Migration
  def change
  	rename_column :users, :hash, :activation_hash
  end
end
