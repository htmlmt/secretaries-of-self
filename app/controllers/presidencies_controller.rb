class PresidenciesController < ApplicationController
  before_action :set_presidency, only: [:show, :edit, :update, :destroy]

  # GET /presidencies
  # GET /presidencies.json
  def index
    @presidencies = Presidency.all
  end

  # GET /presidencies/1
  # GET /presidencies/1.json
  def show
  end

  # GET /presidencies/new
  def new
    @presidency = Presidency.new
  end

  # GET /presidencies/1/edit
  def edit
  end

  # POST /presidencies
  # POST /presidencies.json
  def create
    @presidency = Presidency.new(presidency_params)

    respond_to do |format|
      if @presidency.save
        format.html { redirect_to @presidency, notice: 'Presidency was successfully created.' }
        format.json { render :show, status: :created, location: @presidency }
      else
        format.html { render :new }
        format.json { render json: @presidency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presidencies/1
  # PATCH/PUT /presidencies/1.json
  def update
    respond_to do |format|
      if @presidency.update(presidency_params)
        format.html { redirect_to @presidency, notice: 'Presidency was successfully updated.' }
        format.json { render :show, status: :ok, location: @presidency }
      else
        format.html { render :edit }
        format.json { render json: @presidency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presidencies/1
  # DELETE /presidencies/1.json
  def destroy
    @presidency.destroy
    respond_to do |format|
      format.html { redirect_to presidencies_url, notice: 'Presidency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presidency
      @presidency = Presidency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def presidency_params
      params.require(:presidency).permit(:cabinet_id)
    end
end
