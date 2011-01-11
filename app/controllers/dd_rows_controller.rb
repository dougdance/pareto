class DdRowsController < ApplicationController
  # GET /dd_rows
  # GET /dd_rows.xml
  def index
    @dd_rows = DdRow.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dd_rows }
    end
  end

  # GET /dd_rows/1
  # GET /dd_rows/1.xml
  def show
    @dd_row = DdRow.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dd_row }
    end
  end

  # GET /dd_rows/new
  # GET /dd_rows/new.xml
  def new
    @dd_row = DdRow.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dd_row }
    end
  end

  # GET /dd_rows/1/edit
  def edit
    @dd_row = DdRow.find(params[:id])
  end

  # POST /dd_rows
  # POST /dd_rows.xml
  def create
    @dd_row = DdRow.new(params[:dd_row])

    respond_to do |format|
      if @dd_row.save
        format.html { redirect_to(@dd_row, :notice => 'Dd row was successfully created.') }
        format.xml  { render :xml => @dd_row, :status => :created, :location => @dd_row }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dd_row.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dd_rows/1
  # PUT /dd_rows/1.xml
  def update
    @dd_row = DdRow.find(params[:id])

    respond_to do |format|
      if @dd_row.update_attributes(params[:dd_row])
        format.html { redirect_to(@dd_row, :notice => 'Dd row was successfully updated.') }
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
    @dd_row = DdRow.find(params[:id])
    @dd_row.destroy

    respond_to do |format|
      format.html { redirect_to(dd_rows_url) }
      format.xml  { head :ok }
    end
  end
end
