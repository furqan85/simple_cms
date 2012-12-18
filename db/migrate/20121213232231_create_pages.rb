class CreatePages < ActiveRecord::Migration
  # def change
  def self.up
    create_table :pages do |t|
      t.integer 'subject_id'
      # t.references 'subject' # A FK poderia ser assim também.
      t.string 'name', :limit => 90
      t.string 'permalink', :limit => 70
      t.integer 'position'
      t.boolean 'visible', :default => false
      t.timestamps
    end
    add_index('pages', 'subject_id')
    add_index('pages', 'permalink')
  end # Fim self.up.

  def self.down
    drop_table :pages
  end # Fim self.down.
end
