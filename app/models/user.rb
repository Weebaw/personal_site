class User < ActiveRecord::Migration
  # has_many :comments
  
  has_secure_password

end
