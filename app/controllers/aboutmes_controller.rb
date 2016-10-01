class AboutmesController < ApplicationController
  before_action :set_aboutme, only: [:show, :edit, :update, :destroy]

  # GET /aboutmes
  # GET /aboutmes.json
  def index
    
  end

  # GET /aboutmes/1
  # GET /aboutmes/1.json
  def show
  end

  # GET /aboutmes/new
  def new
    @aboutme = Aboutme.new
  end

  # GET /aboutmes/1/edit
  def edit
  end

  # POST /aboutmes
  # POST /aboutmes.json
  def create
    @aboutme = Aboutme.new(aboutme_params)

    respond_to do |format|
      if @aboutme.save
        format.html { redirect_to @aboutme, notice: 'Aboutme was successfully created.' }
        format.json { render :show, status: :created, location: @aboutme }
      else
        format.html { render :new }
        format.json { render json: @aboutme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aboutmes/1
  # PATCH/PUT /aboutmes/1.json
  def update
    respond_to do |format|
      if @aboutme.update(aboutme_params)
        format.html { redirect_to @aboutme, notice: 'Aboutme was successfully updated.' }
        format.json { render :show, status: :ok, location: @aboutme }
      else
        format.html { render :edit }
        format.json { render json: @aboutme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aboutmes/1
  # DELETE /aboutmes/1.json
  def destroy
    @aboutme.destroy
    respond_to do |format|
      format.html { redirect_to aboutmes_url, notice: 'Aboutme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aboutme
      @aboutme = Aboutme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aboutme_params
      params.fetch(:aboutme, {})
    end
end
