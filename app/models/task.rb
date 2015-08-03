class Task < ActiveRecord::Base
acts_as_nested_set
accepts_nested_attributes_for :children

has_many :projetos
belongs_to :projeto

end
