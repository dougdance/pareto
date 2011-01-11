class DdFkColumnsController < ApplicationController
  # GET /dd_fk_columns
  # GET /dd_fk_columns.xml
  def index
    @dd_fk_columns = DdFkColumn.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dd_fk_columns }
    end
  end

  # GET /dd_fk_columns/1
  # GET /dd_fk_columns/1.xml
  def show
    @dd_fk_column = DdFkColumn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dd_fk_column }
    end
  end

  # GET /dd_fk_columns/new
  # GET /dd_fk_columns/new.xml
  def new
    @dd_fk_column = DdFkColumn.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dd_fk_column }
    end
  end

  # GET /dd_fk_columns/1/edit
  def edit
    @dd_fk_column = DdFkColumn.find(params[:id])
  end

  # POST /dd_fk_columns
  # POST /dd_fk_columns.xml
  def create
    @dd_fk_column = DdFkColumn.new(params[:dd_fk_column])

    respond_to do |format|
      if @dd_fk_column.save
        format.html { redirect_to(@dd_fk_column, :notice => 'Dd fk column was successfully created.') }
        format.xml  { render :xml => @dd_fk_column, :status => :created, :location => @dd_fk_column }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dd_fk_column.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dd_fk_columns/1
  # PUT /dd_fk_columns/1.xml
  def update
    @dd_fk_column = DdFkColumn.find(params[:id])

    respond_to do |format|
      if @dd_fk_column.update_attributes(params[:dd_fk_column])
        format.html { redirect_to(@dd_fk_column, :notice => 'Dd fk column was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dd_fk_column.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dd_fk_columns/1
  # DELETE /dd_fk_columns/1.xml
  def destroy
    @dd_fk_column = DdFkColumn.find(params[:id])
    @dd_fk_column.destroy

    respond_to do |format|
      format.html { redirect_to(dd_fk_columns_url) }
      format.xml  { head :ok }
    end
  end
end
