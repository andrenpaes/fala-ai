class Avaliacao < ActiveRecord::Base
  belongs_to :palestra
  belongs_to :avaliador

  validates_presence_of :valor, :message => 'deve ser informado'
  before_save :trim_comentario
  
  def trim_comentario
    self.comentario = self.comentario[0..499]
  end
end
