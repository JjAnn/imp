class Relato < ActiveRecord::Base
belongs_to :cliente
belongs_to :projeto
belongs_to :local
belongs_to :task
  

end
