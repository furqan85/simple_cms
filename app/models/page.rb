class Page < ActiveRecord::Base

  belongs_to :subject
  has_many :sections
  # has_and_belongs_to_many :admin_users
  has_and_belongs_to_many :editors, :class_name => 'AdminUser'

  attr_accessible :name, :permalink, :position, :visible
end
