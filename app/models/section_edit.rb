class SectionEdit < ActiveRecord::Base
  belongs_to :editor, :class_name, 'AdminUser', :foreign_key => 'admin_user_id'
  belongs_to :section

  #attr_accessible :editor, :section, :summary
end
