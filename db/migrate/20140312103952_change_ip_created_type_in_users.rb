class ChangeIpCreatedTypeInUsers < ActiveRecord::Migration
  def change
    change_column :users, :ip_created, :string, :limit => 32
  end
end
