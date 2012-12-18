class CreateSections < ActiveRecord::Migration
  # def change
  def self.up
    create_table :sections do |t|
      t.references :page # Same as t.integer 'page_id'.
      t.string 'name', :limit => 50
      t.integer 'position'
      t.boolean 'visible', :default => false
      t.string 'content_type', :limit => 50
      t.text 'content'
      t.timestamps
    end
    add_index('sections', 'page_id')
  end # Fim self.up.

  def self.down
    drop_table :sections
  end
end
