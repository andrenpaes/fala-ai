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
    @rating = Rating.new

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

  # GET /palestras/new
  # GET /palestras/new.xml
  def new
    @palestra = Palestra.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @palestra }
    end
  end

  # GET /palestras/1/edit
  def edit
    @palestra = Palestra.find(params[:id])
  end

  # POST /palestras
  # POST /palestras.xml
  def create
    @palestra = Palestra.new(params[:palestra])

    respond_to do |format|
      if @palestra.save
        flash[:notice] = 'Palestra was successfully created.'
        format.html { redirect_to(@palestra) }
        format.xml  { render :xml => @palestra, :status => :created, :location => @palestra }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @palestra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /palestras/1
  # PUT /palestras/1.xml
  def update
    @palestra = Palestra.find(params[:id])

    respond_to do |format|
      if @palestra.update_attributes(params[:palestra])
        flash[:notice] = 'Palestra was successfully updated.'
        format.html { redirect_to(@palestra) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @palestra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /palestras/1
  # DELETE /palestras/1.xml
  def destroy
    @palestra = Palestra.find(params[:id])
    @palestra.destroy

    respond_to do |format|
      format.html { redirect_to(palestras_url) }
      format.xml  { head :ok }
    end
  end
end
