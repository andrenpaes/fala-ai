module PalestrasHelper
  include ActionView::Helpers::NumberHelper

  def em_andamento?(palestra)
    agora = Time.now
    hora_palestra = palestra.horario.hour + (palestra.horario.min / 60.0)
    puts hora_palestra
    if palestra.data == Date.today
      puts hora_palestra, hora_palestra.ceil, palestra.horario
      return true if hora_palestra.ceil == agora.hour
      return true if palestra.horario.hour == agora.hour and palestra.horario.min >= agora.min
    end
  end
end
