class Page < ActiveRecord::Base
  include TheSortableTree::Scopes
has_many :projetos
has_many :clientes
has_many :tasks
belongs_to :task
belongs_to :cliente
  # any code here
end
