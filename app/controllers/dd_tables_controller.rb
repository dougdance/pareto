class DdTablesController < ApplicationController
  # GET /dd_tables
  # GET /dd_tables.xml
  def index
    @dd_tables = DdTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dd_tables }
    end
  end

  # GET /dd_tables/1
  # GET /dd_tables/1.xml
  def show
    @dd_table = DdTable.find(params[:id])
    build_table_data

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dd_table }
    end
  end


  # GET /dd_tables/new
  # GET /dd_tables/new.xml
  def new
    @submit_text = "Create"
    @dd_table = DdTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dd_table }
    end
  end

  # GET /dd_tables/1/edit
  def edit
    @dd_table = DdTable.find(params[:id])
  end

  # POST /dd_tables
  # POST /dd_tables.xml
  def create
    @dd_table = DdTable.new(params[:dd_table])

    respond_to do |format|
      if @dd_table.save
        format.html { redirect_to(@dd_table, :notice => 'Dd table was successfully created.') }
        format.xml  { render :xml => @dd_table, :status => :created, :location => @dd_table }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dd_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dd_tables/1
  # PUT /dd_tables/1.xml
  def update
    @submit_text = "Update"
    @dd_table = DdTable.find(params[:id])

    respond_to do |format|
      if @dd_table.update_attributes(params[:dd_table])
        format.html { redirect_to(@dd_table, :notice => 'Dd table was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dd_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dd_tables/1
  # DELETE /dd_tables/1.xml
  def destroy
    @dd_table = DdTable.find(params[:id])
    @dd_table.destroy

    respond_to do |format|
      format.html { redirect_to(dd_tables_url) }
      format.xml  { head :ok }
    end
  end

  private

    def build_table_data
      @columns = @dd_table.dd_string_columns
      column_id_to_index = map_id_to_index(@columns)

      rows = @dd_table.dd_rows
      row_id_to_index = map_id_to_index(rows)

      @table_data = Array.new(rows.length) { Array.new(@columns.length) }

      rows.each do |row|
        i = row_id_to_index[row.id]
        row.dd_string_values.each do |value|
          j = column_id_to_index[value.dd_string_column_id]
          @table_data[i][j] = value
        end
      end
    end

    def map_id_to_index(array)
      id_to_index = {}
      array.each_index do |i|
        id_to_index[array[i].id] = i
      end
      id_to_index
    end

end
