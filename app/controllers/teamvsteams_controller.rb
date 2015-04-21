class TeamvsteamsController < ApplicationController
  before_action :set_teamvsteam, only: [:show, :edit, :update, :destroy]

  # GET /teamvsteams
  # GET /teamvsteams.json
  def index
    @teamvsteams = Teamvsteam.all
  end

  # GET /teamvsteams/1
  # GET /teamvsteams/1.json
  def show
  end

  # GET /teamvsteams/new
  def new
    @teamvsteam = Teamvsteam.new
  end

  # GET /teamvsteams/1/edit
  def edit
  end

  # POST /teamvsteams
  # POST /teamvsteams.json
  def create
    @teamvsteam = Teamvsteam.new(teamvsteam_params)

    respond_to do |format|
      if @teamvsteam.save
        format.html { redirect_to @teamvsteam, notice: 'Teamvsteam was successfully created.' }
        format.json { render :show, status: :created, location: @teamvsteam }
      else
        format.html { render :new }
        format.json { render json: @teamvsteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teamvsteams/1
  # PATCH/PUT /teamvsteams/1.json
  def update
    respond_to do |format|
      if @teamvsteam.update(teamvsteam_params)
        format.html { redirect_to @teamvsteam, notice: 'Teamvsteam was successfully updated.' }
        format.json { render :show, status: :ok, location: @teamvsteam }
      else
        format.html { render :edit }
        format.json { render json: @teamvsteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teamvsteams/1
  # DELETE /teamvsteams/1.json
  def destroy
    @teamvsteam.destroy
    respond_to do |format|
      format.html { redirect_to teamvsteams_url, notice: 'Teamvsteam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teamvsteam
      @teamvsteam = Teamvsteam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teamvsteam_params
      params.require(:teamvsteam).permit(:year, :league, :team, :opposingTeam, :wins, :losses, :ties, :otl)
    end
end
