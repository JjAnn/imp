class Tsk2 < ActiveRecord::Base
belongs_to :tsk1 
has_many :tsk3s 


accepts_nested_attributes_for :tsk3s, allow_destroy: true

end
