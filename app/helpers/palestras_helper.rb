module PalestrasHelper
  include ActionView::Helpers::NumberHelper

  def em_andamento?(palestra)
    agora = Time.now
    puts agora
    hora_palestra = palestra.horario.hour + (palestra.horario.min / 60.0)
    if palestra.data == Date.today
      return true if hora_palestra.ceil == agora.hour
      return true if palestra.horario.hour == agora.hour and palestra.horario.min >= agora.min
    end
  end
end
