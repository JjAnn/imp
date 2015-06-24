class Relato < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :projeto
  belongs_to :locals
  has_many :locals
  has_many :tasks
  belongs_to :user

end
