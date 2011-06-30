class AvaliacaoController < ApplicationController
  def new
    @palestra = Palestra.find(params[:palestra_id])
    @avaliacao = Avaliacao.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    @palestra = Palestra.find(params[:palestra_id])
    @rating = Avaliacao.new(params[:avaliacao])
    @rating.palestra = @palestra
    @rating.save

    respond_to do |format|
      format.html { redirect_to(palestras_url) }
      format.xml  { head :ok }
    end
  end
end
