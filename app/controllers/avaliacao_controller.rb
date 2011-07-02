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
    @avaliacao = Avaliacao.new(params[:avaliacao])
    @avaliacao.palestra = @palestra

    if @avaliacao.save
      expire_action :controller => 'palestras', :action => :index
      expire_action :controller => 'palestras', :action => :show
      respond_to do |format|
        format.html { redirect_to(palestras_url) }
        format.xml  { head :ok }
      end
    else
      render :action => :new
    end
  end
end
