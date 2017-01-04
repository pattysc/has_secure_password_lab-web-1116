class CreateUser < ActiveRecord::Migration
  create_table :users do |t|
    t.string :name
    t.string :password
    t.string :password_confirmation
  end
end
