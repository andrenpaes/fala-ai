module PalestrasHelper
  include ActionView::Helpers::NumberHelper

  def em_andamento?(palestra)
    palestra.data == Date.today and palestra.horario.hour == Time.now.hour
  end
end
