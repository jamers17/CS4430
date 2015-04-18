class GoaliesController < ApplicationController
  before_action :set_goaly, only: [:show, :edit, :update, :destroy]

  # GET /goalies
  # GET /goalies.json
  def index
    @goalies = Goalie.all
  end

  # GET /goalies/1
  # GET /goalies/1.json
  def show
  end

  # GET /goalies/new
  def new
    @goaly = Goalie.new
  end

  # GET /goalies/1/edit
  def edit
  end

  # POST /goalies
  # POST /goalies.json
  def create
    @goaly = Goalie.new(goaly_params)

    respond_to do |format|
      if @goaly.save
        format.html { redirect_to @goaly, notice: 'Goalie was successfully created.' }
        format.json { render :show, status: :created, location: @goaly }
      else
        format.html { render :new }
        format.json { render json: @goaly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goalies/1
  # PATCH/PUT /goalies/1.json
  def update
    respond_to do |format|
      if @goaly.update(goaly_params)
        format.html { redirect_to @goaly, notice: 'Goalie was successfully updated.' }
        format.json { render :show, status: :ok, location: @goaly }
      else
        format.html { render :edit }
        format.json { render json: @goaly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goalies/1
  # DELETE /goalies/1.json
  def destroy
    @goaly.destroy
    respond_to do |format|
      format.html { redirect_to goalies_url, notice: 'Goalie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goaly
      @goaly = Goalie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goaly_params
      params.require(:goaly).permit(:playoffs, :year, :player, :age, :team, :gp, :w, :l, :ot, :ga, :sa, :sv, :svp, :gaa, :so, :minutes, :g, :a, :pts, :pim, :firstname, :lastname)
    end
end
