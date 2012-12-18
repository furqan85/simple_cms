class AdminUser < ActiveRecord::Base

  has_and_belongs_to_many :pages
  has_many :section_edits

  attr_accessible :first_name, :last_name, :username, :hashed_password, :salt

  # Configure a different table name, when, for instance, it is
  # different from the Class/Model.
  #set_table_name('admin_users')
end
