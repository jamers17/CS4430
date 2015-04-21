class MiscawardsController < ApplicationController
  before_action :set_miscaward, only: [:show, :edit, :update, :destroy]

  # GET /miscawards
  # GET /miscawards.json
  def index
    @miscawards = Miscaward.all
  end

  # GET /miscawards/1
  # GET /miscawards/1.json
  def show
  end

  # GET /miscawards/new
  def new
    @miscaward = Miscaward.new
  end

  # GET /miscawards/1/edit
  def edit
  end

  # POST /miscawards
  # POST /miscawards.json
  def create
    @miscaward = Miscaward.new(miscaward_params)

    respond_to do |format|
      if @miscaward.save
        format.html { redirect_to @miscaward, notice: 'Miscaward was successfully created.' }
        format.json { render :show, status: :created, location: @miscaward }
      else
        format.html { render :new }
        format.json { render json: @miscaward.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /miscawards/1
  # PATCH/PUT /miscawards/1.json
  def update
    respond_to do |format|
      if @miscaward.update(miscaward_params)
        format.html { redirect_to @miscaward, notice: 'Miscaward was successfully updated.' }
        format.json { render :show, status: :ok, location: @miscaward }
      else
        format.html { render :edit }
        format.json { render json: @miscaward.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miscawards/1
  # DELETE /miscawards/1.json
  def destroy
    @miscaward.destroy
    respond_to do |format|
      format.html { redirect_to miscawards_url, notice: 'Miscaward was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_miscaward
      @miscaward = Miscaward.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def miscaward_params
      params.require(:miscaward).permit(:name, :award, :year, :league, :note)
    end
end
