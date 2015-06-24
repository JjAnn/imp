class Cliente < ActiveRecord::Base
has_many :projetos
has_many :locals
has_many :relatos
end
