class Relato < ActiveRecord::Base
belongs_to :cliente
belongs_to :projeto
belongs_to :local
belongs_to :task
has_many :relatos
  accepts_nested_attributes_for :relatos, allow_destroy: true

end
