class GastosController < ApplicationController

  def index
    @gastos = Gasto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gastos }
      format.js   { render :json => @gastos }
    end
  end


  def show
    @gasto = Gasto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gasto }
      format.js   { render :json => @gastos }
    end
  end
  

  def new
    @gasto = Gasto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gasto }
      format.js   { render :json => @gastos }
    end
  end


  def edit
    @gasto = Gasto.find(params[:id])
  end
  

  def create
    @gasto = Gasto.new(params[:gasto])

    respond_to do |format|
      if @gasto.save
        format.html { redirect_to(@gasto, :notice => 'Gasto was successfully created.') }
        format.xml  { render :xml => @gasto, :status => :created, :location => @gasto }
        format.js   { render :json => @gasto, :status => :created, :location => @gasto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gasto.errors, :status => :unprocessable_entity }
        format.js   { render :json => @gasto.errors, :status => :unprocessable_entity }
      end
    end
  end
  

  def update
    @gasto = Gasto.find(params[:id])

    respond_to do |format|
      if @gasto.update_attributes(params[:gasto])
        format.html { redirect_to(@gasto, :notice => 'Gasto was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gasto.errors, :status => :unprocessable_entity }
        format.js   { render :json => @gasto.errors, :status => :unprocessable_entity }
      end
    end
  end
  

  def destroy
    @gasto = Gasto.find(params[:id])
    @gasto.destroy

    respond_to do |format|
      format.html { redirect_to(gastos_url) }
      format.xml  { head :ok }
      format.js   { head :ok }
    end
  end
end
