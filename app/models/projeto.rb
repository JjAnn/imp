class Projeto < ActiveRecord::Base
has_many :clientes
belongs_to :user
belongs_to :cliente
has_many :tasks
belongs_to :task
belongs_to :page
has_many :relatos
accepts_nested_attributes_for :tasks, :allow_destroy => true
end
