class PalestrasController < ApplicationController
  def index
    @palestras = Palestra.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @palestras }
    end
  end

  def show
    @palestra = Palestra.find(params[:id])
    #@avaliacoes = Avaliacao.find(:palestra => @palestra)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @palestra }
    end
  end

  # GET /palestra/1/avaliar
  def avaliar
    @palestra = Palestra.find(params[:id])
    @avaliacao = Avaliacao.new

    respond_to do |format|
      format.html # avaliar.html.erb
    end
  end

  # POST /palestra/1/avaliar
  def gravar_avaliacao
    @palestra = Palestra.find(params[:id])
    @rating = Avaliacao.new(params[:avaliacao])
    @rating.palestra = @palestra
    @rating.save

    respond_to do |format|
      format.html { redirect_to(palestras_url) }
      format.xml  { head :ok }
    end
  end
end
