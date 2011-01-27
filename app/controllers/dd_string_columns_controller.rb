class DdStringColumnsController < ApplicationController
  # GET /dd_string_columns
  # GET /dd_string_columns.xml
  def index
    @dd_string_columns = DdStringColumn.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dd_string_columns }
    end
  end

  # GET /dd_string_columns/1
  # GET /dd_string_columns/1.xml
  def show
    @dd_string_column = DdStringColumn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dd_string_column }
    end
  end

  # GET /dd_string_columns/new
  # GET /dd_string_columns/new.xml
  def new
    @dd_table = DdTable.find(params[:dd_table_id])
    @dd_string_column = DdStringColumn.new
    @dd_string_column.dd_table_id = @dd_table.id
    @the_url = dd_table_dd_string_columns_path(@dd_table)
    @submit_text = "Create"

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dd_string_column }
    end
  end

  # GET /dd_string_columns/1/edit
  def edit
    @dd_string_column = DdStringColumn.find(params[:id])
    @dd_tables = DdTable.all
  end

  # POST /dd_string_columns
  # POST /dd_string_columns.xml
  def create
    @dd_table = DdTable.find(params[:dd_table_id])
    @dd_string_column = DdStringColumn.new(params[:dd_string_column])

    respond_to do |format|
      if @dd_string_column.save
        format.html { redirect_to(@dd_table, :notice => 'Column was successfully created.') }
        format.xml  { render :xml => @dd_string_column, :status => :created, :location => @dd_string_column }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dd_string_column.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dd_string_columns/1
  # PUT /dd_string_columns/1.xml
  def update
    @dd_string_column = DdStringColumn.find(params[:id])

    respond_to do |format|
      if @dd_string_column.update_attributes(params[:dd_string_column])
        format.html { redirect_to(@dd_string_column, :notice => 'Dd string column was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dd_string_column.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dd_string_columns/1
  # DELETE /dd_string_columns/1.xml
  def destroy
    @dd_string_column = DdStringColumn.find(params[:id])
    @dd_string_column.destroy

    respond_to do |format|
      format.html { redirect_to(dd_string_columns_url) }
      format.xml  { head :ok }
    end
  end
end
