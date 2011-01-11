class DdStringValuesController < ApplicationController
  # GET /dd_string_values
  # GET /dd_string_values.xml
  def index
    @dd_string_values = DdStringValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dd_string_values }
    end
  end

  # GET /dd_string_values/1
  # GET /dd_string_values/1.xml
  def show
    @dd_string_value = DdStringValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dd_string_value }
    end
  end

  # GET /dd_string_values/new
  # GET /dd_string_values/new.xml
  def new
    @dd_string_value = DdStringValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dd_string_value }
    end
  end

  # GET /dd_string_values/1/edit
  def edit
    @dd_string_value = DdStringValue.find(params[:id])
  end

  # POST /dd_string_values
  # POST /dd_string_values.xml
  def create
    @dd_string_value = DdStringValue.new(params[:dd_string_value])

    respond_to do |format|
      if @dd_string_value.save
        format.html { redirect_to(@dd_string_value, :notice => 'Dd string value was successfully created.') }
        format.xml  { render :xml => @dd_string_value, :status => :created, :location => @dd_string_value }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dd_string_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dd_string_values/1
  # PUT /dd_string_values/1.xml
  def update
    @dd_string_value = DdStringValue.find(params[:id])

    respond_to do |format|
      if @dd_string_value.update_attributes(params[:dd_string_value])
        format.html { redirect_to(@dd_string_value, :notice => 'Dd string value was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dd_string_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dd_string_values/1
  # DELETE /dd_string_values/1.xml
  def destroy
    @dd_string_value = DdStringValue.find(params[:id])
    @dd_string_value.destroy

    respond_to do |format|
      format.html { redirect_to(dd_string_values_url) }
      format.xml  { head :ok }
    end
  end
end
