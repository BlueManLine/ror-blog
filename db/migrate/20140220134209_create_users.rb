class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :status, :null => false
      t.string :hash
      t.string :email, :null => false, index: true
      t.string :nick, :null => false, index: true
      t.string :password, :null => false
      t.string :ip_login
      t.datetime :ip_created
      t.timestamps :null => false
    end
  end
end
