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
    @media = Avaliacao.average(:valor, :conditions => ["palestra_id = ?", @palestra.id])
    @avaliacoes = Avaliacao.all(:conditions => ["palestra_id = ? and comentario is not null and comentario <> ''", @palestra.id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @palestra }
    end
  end
end
