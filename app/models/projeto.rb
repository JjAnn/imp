class Projeto < ActiveRecord::Base
has_many :clientes
belongs_to :user
belongs_to :cliente
has_many :tasks
belongs_to :task
belongs_to :page
has_many :relatos
<<<<<<< HEAD
has_many :reltasks
belongs_to :reltask
=======
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
accepts_nested_attributes_for :tasks, :allow_destroy => true
end
