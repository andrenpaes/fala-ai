class AvaliacaoController < ApplicationController
  def new
    @palestra = Palestra.find(params[:palestra_id])
    @avaliacao = Avaliacao.new

    respond_to do |format|
      format.html # new.html.erb
    end
    puts "Blah!"
  end

  def create
    @palestra = Palestra.find(params[:palestra_id])
    @avaliacao = Avaliacao.new(params[:avaliacao])
    @avaliacao.palestra = @palestra

    if @avaliacao.save
      respond_to do |format|
        format.html { redirect_to(palestras_url) }
        format.xml  { head :ok }
      end
    else
      render :action => :new
    end
  end
end
