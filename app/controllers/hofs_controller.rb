class HofsController < ApplicationController
  before_action :set_hof, only: [:show, :edit, :update, :destroy]

  # GET /hofs
  # GET /hofs.json
  def index
    @search = Hof.search(params[:q])
    @hofs = @search.result
  end

  # GET /hofs/1
  # GET /hofs/1.json
  def show
  end

  # GET /hofs/new
  def new
    @hof = Hof.new
  end

  # GET /hofs/1/edit
  def edit
  end

  # POST /hofs
  # POST /hofs.json
  def create
    @hof = Hof.new(hof_params)

    respond_to do |format|
      if @hof.save
        format.html { redirect_to @hof, notice: 'Hof was successfully created.' }
        format.json { render :show, status: :created, location: @hof }
      else
        format.html { render :new }
        format.json { render json: @hof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hofs/1
  # PATCH/PUT /hofs/1.json
  def update
    respond_to do |format|
      if @hof.update(hof_params)
        format.html { redirect_to @hof, notice: 'Hof was successfully updated.' }
        format.json { render :show, status: :ok, location: @hof }
      else
        format.html { render :edit }
        format.json { render json: @hof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hofs/1
  # DELETE /hofs/1.json
  def destroy
    @hof.destroy
    respond_to do |format|
      format.html { redirect_to hofs_url, notice: 'Hof was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hof
      @hof = Hof.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hof_params
      params.require(:hof).permit(:name, :year, :category)
    end
end
