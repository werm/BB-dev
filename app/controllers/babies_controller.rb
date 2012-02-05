class BabiesController < ApplicationController
  # GET /babies
  # GET /babies.json
  def index
    @babies = Baby.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @babies }
    end
  end

  # GET /babies/1
  # GET /babies/1.json
  def show
    @baby = Baby.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @baby }
    end
  end

  # GET /babies/new
  # GET /babies/new.json
  def new
    @baby = Baby.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @baby }
    end
  end

  # GET /babies/1/edit
  def edit
    @baby = Baby.find(params[:id])
  end

  # POST /babies
  # POST /babies.json
  def create
    @baby = Baby.new(params[:baby])

    respond_to do |format|
      if @baby.save
        format.html { redirect_to @baby, notice: 'Baby was successfully created.' }
        format.json { render json: @baby, status: :created, location: @baby }
      else
        format.html { render action: "new" }
        format.json { render json: @baby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /babies/1
  # PUT /babies/1.json
  def update
    @baby = Baby.find(params[:id])

    respond_to do |format|
      if @baby.update_attributes(params[:baby])
        format.html { redirect_to @baby, notice: 'Baby was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @baby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /babies/1
  # DELETE /babies/1.json
  def destroy
    @baby = Baby.find(params[:id])
    @baby.destroy

    respond_to do |format|
      format.html { redirect_to babies_url }
      format.json { head :no_content }
    end
  end
end
