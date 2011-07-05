class Palestra < ActiveRecord::Base
  has_many :avaliacao

  def media_avaliacoes
    Avaliacao.average(:valor, :conditions => ["palestra_id = ?", id])
  end

  def quantidade_avaliacoes
    self.avaliacao.count
  end

  def em_andamento?
    agora = Time.now.getlocal("-03:00")
    hora_palestra = self.horario.hour + (self.horario.min / 60.0)
    if self.data == Date.today
      return true if hora_palestra.ceil == agora.hour
      return true if self.horario.hour == agora.hour and self.horario.min >= agora.min
    end
  end

  def avaliacoes_com_comentario
    Avaliacao.all(:conditions => ["palestra_id = ? and comentario is not null and comentario <> ''", id])
  end
end
