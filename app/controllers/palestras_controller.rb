class PalestrasController < ApplicationController

  # GET /palestras
  # GET /palestras.xml
  def index
    @palestras = Palestra.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @palestras }
    end
  end

  # GET /palestras/1
  # GET /palestras/1.xml
  def show
    @palestra = Palestra.find(params[:id])
    @avaliacao = Avaliacao.new

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @palestra }
    end
  end

  def rate
    @palestra = Palestra.find(params[:id])
    @rating = Rating.new(params[:rating])
    @rating.palestra = @palestra
    @rating.save

    respond_to do |format|
      format.html { redirect_to(palestras_url) }
      format.xml  { head :ok }
    end
  end
end
