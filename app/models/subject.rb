class Subject < ActiveRecord::Base
  
  has_many :pages

  # attr_accessible :title, :body
  attr_accessible :name, :position, :visible

  # Criar um 'named scope':
  scope :visible, where({:visible => true})
  scope :invisible, where({:visible => false})

  scope :my_search, lambda {|my_query| where(['name LIKE ?', "%#{my_query}%"])}
end


