class MicgropostsController < ApplicationController
  # GET /micgroposts
  # GET /micgroposts.xml
  def index
    @micgroposts = Micgropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @micgroposts }
    end
  end

  # GET /micgroposts/1
  # GET /micgroposts/1.xml
  def show
    @micgropost = Micgropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @micgropost }
    end
  end

  # GET /micgroposts/new
  # GET /micgroposts/new.xml
  def new
    @micgropost = Micgropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @micgropost }
    end
  end

  # GET /micgroposts/1/edit
  def edit
    @micgropost = Micgropost.find(params[:id])
  end

  # POST /micgroposts
  # POST /micgroposts.xml
  def create
    @micgropost = Micgropost.new(params[:micgropost])

    respond_to do |format|
      if @micgropost.save
        format.html { redirect_to(@micgropost, :notice => 'Micgropost was successfully created.') }
        format.xml  { render :xml => @micgropost, :status => :created, :location => @micgropost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @micgropost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /micgroposts/1
  # PUT /micgroposts/1.xml
  def update
    @micgropost = Micgropost.find(params[:id])

    respond_to do |format|
      if @micgropost.update_attributes(params[:micgropost])
        format.html { redirect_to(@micgropost, :notice => 'Micgropost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @micgropost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /micgroposts/1
  # DELETE /micgroposts/1.xml
  def destroy
    @micgropost = Micgropost.find(params[:id])
    @micgropost.destroy

    respond_to do |format|
      format.html { redirect_to(micgroposts_url) }
      format.xml  { head :ok }
    end
  end
end
