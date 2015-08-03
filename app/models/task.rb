class Task < ActiveRecord::Base
<<<<<<< HEAD
acts_as_nested_set
accepts_nested_attributes_for :children

has_many :projetos
belongs_to :projeto

=======
belongs_to :relato
has_many :relatos
has_many :projetos, :dependent => :destroy
belongs_to :projeto
belongs_to :page
has_many :pages
belongs_to :cliente
has_many :clientes , :through => :projetos
accepts_nested_attributes_for :projetos, :allow_destroy => true
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
end
