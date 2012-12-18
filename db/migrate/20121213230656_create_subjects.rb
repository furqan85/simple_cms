class CreateSubjects < ActiveRecord::Migration
  def self.up
    create_table :subjects do |t|
      t.string 'name', :limit => 25, :null => false
      t.integer 'position', :default => 0
      t.boolean 'visible', :null => false, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :subjects
  end
end
