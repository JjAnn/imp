class Task < ActiveRecord::Base
belongs_to :relato
has_many :relatos
has_many :projetos, :dependent => :destroy
belongs_to :projeto
belongs_to :page
has_many :pages
belongs_to :cliente
has_many :clientes , :through => :projetos
accepts_nested_attributes_for :projetos, :allow_destroy => true
end
