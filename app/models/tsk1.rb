class Tsk1 < ActiveRecord::Base
belongs_to :task 
has_many :tsk2s 
accepts_nested_attributes_for :tsk2s, allow_destroy: true



end
