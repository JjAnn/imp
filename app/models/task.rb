class Task < ActiveRecord::Base
belongs_to :relato
has_many :projetos, :dependent => :destroy
accepts_nested_attributes_for :projetos, :allow_destroy => true
end
