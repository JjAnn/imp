class Cliente < ActiveRecord::Base
belongs_to :page
<<<<<<< HEAD
=======
has_one :local
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
has_many :projetos
belongs_to :projeto
has_many :relatos
has_many :locals
<<<<<<< HEAD
belongs_to :local
has_many :tasks, :through => :projetos
belongs_to :task
has_many :pages
accepts_nested_attributes_for :locals, allow_destroy: true
=======
has_many :tasks, :through => :projetos
belongs_to :task
has_many :pages
 accepts_nested_attributes_for :local 
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
end
