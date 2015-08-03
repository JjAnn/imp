class Relato < ActiveRecord::Base
<<<<<<< HEAD
geocoded_by :ip_address
=======
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
belongs_to :cliente
belongs_to :projeto
belongs_to :local
belongs_to :task
<<<<<<< HEAD
has_many :relatos
belongs_to :user
belongs_to :reltask
has_many :reltasks
has_many :users

accepts_nested_attributes_for :reltasks, allow_destroy: true
=======
  
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289

end
