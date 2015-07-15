class Cliente < ActiveRecord::Base
belongs_to :page
has_many :projetos
belongs_to :projeto
has_many :relatos
has_many :locals
has_many :tasks, :through => :projetos
belongs_to :task
has_many :pages
accepts_nested_attributes_for :locals, allow_destroy: true
end
