class DdRowsController < ApplicationController
  def new
    @dd_table = DdTable.find(params[:dd_table_id])
    @theurl = dd_table_dd_rows_path(@dd_table)
    @columns = {}
    dd_string_columns = @dd_table.dd_string_columns
    @dd_row = DdRow.new
    @dd_row.dd_table_id = @dd_table.id
    dd_string_values = []
    dd_string_columns.each do |column|
      value = DdStringValue.new
      value.dd_string_column_id = column.id
      dd_string_values.push(value) 
      @columns[column.id] = column.name
    end
    @dd_row.dd_string_values = dd_string_values

    respond_to do |format|
      format.html
      format.xml  { render :xml => @dd_row }
    end
  end

  def edit
    @dd_table = DdTable.find(params[:dd_table_id])
    @theurl = dd_table_dd_row_path(@dd_table)
    @columns = {}
    dd_string_columns = @dd_table.dd_string_columns
    @dd_row = DdRow.find(params[:id])
    dd_string_columns.each do |column|
      @columns[column.id] = column.name
    end

    respond_to do |format|
      format.html
      format.xml  { render :xml => @dd_row }
    end
  end

  def create
    @dd_table = DdTable.find(params[:dd_table_id])
    @dd_row = DdRow.new(params[:dd_row])

    respond_to do |format|
      if @dd_row.save
        format.html { redirect_to(@dd_table, :notice => 'Dd row was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /dd_rows/1
  # PUT /dd_rows/1.xml
  def update
    @dd_table = DdTable.find(params[:dd_table_id])
    @dd_row = DdRow.find(params[:id])

    respond_to do |format|
      if @dd_row.update_attributes(params[:dd_row])
        format.html { redirect_to(@dd_table, :notice => 'Dd row was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dd_row.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dd_rows/1
  # DELETE /dd_rows/1.xml
  def destroy
    @dd_table = DdTable.find(params[:dd_table_id])
    @dd_row = DdRow.find(params[:id])
    @dd_row.destroy

    respond_to do |format|
      format.html { redirect_to(@dd_table, :notice => 'Dd row was successfully deleted.') }
      format.xml  { head :ok }
    end
  end
end
