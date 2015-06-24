class Local < ActiveRecord::Base
belongs_to :cliente
belongs_to :relato
has_many :relatos
end
