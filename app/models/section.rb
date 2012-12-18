class Section < ActiveRecord::Base

    belongs_to :page
    has_many :section_edits

    attr_accessible :name, :position, :visible, :content_type, :content
end
