class Avaliacao < ActiveRecord::Base
  belongs_to :palestra
  belongs_to :avaliador

  validates_presence_of :valor, :message => 'deve ser informado'
end
