class Task < ActiveRecord::Base
has_many :tsk1s
has_many :tsk2s 
has_many :tsk3s
has_many :projetos
belongs_to :projeto

accepts_nested_attributes_for :tsk1s, allow_destroy: true
accepts_nested_attributes_for :tsk2s, allow_destroy: true
accepts_nested_attributes_for :tsk3s, allow_destroy: true




end
