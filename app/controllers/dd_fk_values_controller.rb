class DdFkValuesController < ApplicationController
  # GET /dd_fk_values
  # GET /dd_fk_values.xml
  def index
    @dd_fk_values = DdFkValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dd_fk_values }
    end
  end

  # GET /dd_fk_values/1
  # GET /dd_fk_values/1.xml
  def show
    @dd_fk_value = DdFkValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dd_fk_value }
    end
  end

  # GET /dd_fk_values/new
  # GET /dd_fk_values/new.xml
  def new
    @dd_fk_value = DdFkValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dd_fk_value }
    end
  end

  # GET /dd_fk_values/1/edit
  def edit
    @dd_fk_value = DdFkValue.find(params[:id])
  end

  # POST /dd_fk_values
  # POST /dd_fk_values.xml
  def create
    @dd_fk_value = DdFkValue.new(params[:dd_fk_value])

    respond_to do |format|
      if @dd_fk_value.save
        format.html { redirect_to(@dd_fk_value, :notice => 'Dd fk value was successfully created.') }
        format.xml  { render :xml => @dd_fk_value, :status => :created, :location => @dd_fk_value }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dd_fk_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dd_fk_values/1
  # PUT /dd_fk_values/1.xml
  def update
    @dd_fk_value = DdFkValue.find(params[:id])

    respond_to do |format|
      if @dd_fk_value.update_attributes(params[:dd_fk_value])
        format.html { redirect_to(@dd_fk_value, :notice => 'Dd fk value was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dd_fk_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dd_fk_values/1
  # DELETE /dd_fk_values/1.xml
  def destroy
    @dd_fk_value = DdFkValue.find(params[:id])
    @dd_fk_value.destroy

    respond_to do |format|
      format.html { redirect_to(dd_fk_values_url) }
      format.xml  { head :ok }
    end
  end
end
