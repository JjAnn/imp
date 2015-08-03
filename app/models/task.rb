class Task < ActiveRecord::Base
acts_as_nested_set
accepts_nested_attributes_for :children
  has_many :tsk1s
  has_many :tsk2s, through: :tsk1s
  has_many :tsk3s, through: :tsk2s
  has_many :projetos
  belongs_to :projeto

  accepts_nested_attributes_for :tsk1s, allow_destroy: true
end
