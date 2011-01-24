class MeiosController < ApplicationController


  def index
    @meios = Meio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @meios }
      format.js   { render :json => @meios }
    end
  end


  def show
    @meio = Meio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @meio }
      format.js   { render :json => @meios }
    end
  end


  def new
    @meio = Meio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @meio }
      format.js   { render :json => @meios }
    end
  end



  def edit
    @meio = Meio.find(params[:id])
  end


  def create
    @meio = Meio.new(params[:meio])

    respond_to do |format|
      if @meio.save
        format.html { redirect_to(@meio, :notice => 'Meio was successfully created.') }
        format.xml  { render :xml => @meio, :status => :created, :location => @meio }
        format.js   { render :json => @meio, :status => :created, :location => @meio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @meio.errors, :status => :unprocessable_entity }
        format.js   { render :json => @meio.errors, :status => :unprocessable_entity }
      end
    end
  end


  def update
    @meio = Meio.find(params[:id])

    respond_to do |format|
      if @meio.update_attributes(params[:meio])
        format.html { redirect_to(@meio, :notice => 'Meio was successfully updated.') }
        format.xml  { head :ok }
        format.js   { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @meio.errors, :status => :unprocessable_entity }
        format.js   { render :json => @meio.errors, :status => :unprocessable_entity }
      end
    end
  end


  def destroy
    @meio = Meio.find(params[:id])
    @meio.destroy

    respond_to do |format|
      format.html { redirect_to(meios_url) }
      format.xml  { head :ok }
      format.js   { head :ok }
    end
  end
end