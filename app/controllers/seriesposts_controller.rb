class SeriespostsController < ApplicationController
  before_action :set_seriespost, only: [:show, :edit, :update, :destroy]

  # GET /seriesposts
  # GET /seriesposts.json
  def index
<<<<<<< HEAD
    @seriesposts = Seriespost.all
=======
    @search = Seriespost.search(params[:q])
    @seriesposts = @search.result
>>>>>>> 00cd9560e4eb71a15c329eb8f5889a9ce2f9eeb6
  end

  # GET /seriesposts/1
  # GET /seriesposts/1.json
  def show
  end

  # GET /seriesposts/new
  def new
    @seriespost = Seriespost.new
  end

  # GET /seriesposts/1/edit
  def edit
  end

  # POST /seriesposts
  # POST /seriesposts.json
  def create
    @seriespost = Seriespost.new(seriespost_params)

    respond_to do |format|
      if @seriespost.save
        format.html { redirect_to @seriespost, notice: 'Seriespost was successfully created.' }
        format.json { render :show, status: :created, location: @seriespost }
      else
        format.html { render :new }
        format.json { render json: @seriespost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seriesposts/1
  # PATCH/PUT /seriesposts/1.json
  def update
    respond_to do |format|
      if @seriespost.update(seriespost_params)
        format.html { redirect_to @seriespost, notice: 'Seriespost was successfully updated.' }
        format.json { render :show, status: :ok, location: @seriespost }
      else
        format.html { render :edit }
        format.json { render json: @seriespost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seriesposts/1
  # DELETE /seriesposts/1.json
  def destroy
    @seriespost.destroy
    respond_to do |format|
      format.html { redirect_to seriesposts_url, notice: 'Seriespost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seriespost
      @seriespost = Seriespost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seriespost_params
      params.require(:seriespost).permit(:year, :round, :series, :winnerTeam, :winnerTeamLeague, :loserTeam, :loserTeamLeague, :wins, :losses, :ties, :winnersGoals, :losersGoals)
    end
end
