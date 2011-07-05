class PalestrasController < ApplicationController
  caches_action :index

  def index
    @palestras = Palestra.all(:order => 'data DESC, horario ASC')
    @datas = []
    @palestras_por_data = {}
    @palestras.each { |palestra|
      @datas << palestra.data if @datas.index(palestra.data).nil?
      @palestras_por_data[palestra.data] = [] if @palestras_por_data[palestra.data].nil?
      @palestras_por_data[palestra.data] << palestra
    }

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @palestras }
    end
  end

  def show
    @palestra = Palestra.find(params[:id])
    @media = @palestra.media_avaliacoes
    @avaliacoes = @palestra.avaliacoes_com_comentario

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @palestra }
    end
  end
end
