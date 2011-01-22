class MeiosController < ApplicationController
  # GET /meios
  # GET /meios.xml
  def index
    @meios = Meio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @meios }
    end
  end

  # GET /meios/1
  # GET /meios/1.xml
  def show
    @meio = Meio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @meio }
    end
  end

  # GET /meios/new
  # GET /meios/new.xml
  def new
    @meio = Meio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @meio }
    end
  end

  # GET /meios/1/edit
  def edit
    @meio = Meio.find(params[:id])
  end

  # POST /meios
  # POST /meios.xml
  def create
    @meio = Meio.new(params[:meio])

    respond_to do |format|
      if @meio.save
        format.html { redirect_to(@meio, :notice => 'Meio was successfully created.') }
        format.xml  { render :xml => @meio, :status => :created, :location => @meio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @meio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /meios/1
  # PUT /meios/1.xml
  def update
    @meio = Meio.find(params[:id])

    respond_to do |format|
      if @meio.update_attributes(params[:meio])
        format.html { redirect_to(@meio, :notice => 'Meio was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @meio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /meios/1
  # DELETE /meios/1.xml
  def destroy
    @meio = Meio.find(params[:id])
    @meio.destroy

    respond_to do |format|
      format.html { redirect_to(meios_url) }
      format.xml  { head :ok }
    end
  end
end
