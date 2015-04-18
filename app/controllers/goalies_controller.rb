class GoaliesController < ApplicationController
  before_action :set_goalie, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /goalies
  # GET /goalies.json
  def index
    @goalies = Goalie.order(sort_column + " " + sort_direction)
  end

  # GET /goalies/1
  # GET /goalies/1.json
  def show
  end

  # GET /goalies/new
  def new
    @goalie = Goalie.new
  end

  # GET /goalies/1/edit
  def edit
  end

  # POST /goalies
  # POST /goalies.json
  def create
    @goalie = Goalie.new(goalie_params)

    respond_to do |format|
      if @goalie.save
        format.html { redirect_to @goalie, notice: 'Goalie was successfully created.' }
        format.json { render :show, status: :created, location: @goalie }
      else
        format.html { render :new }
        format.json { render json: @goalie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goalies/1
  # PATCH/PUT /goalies/1.json
  def update
    respond_to do |format|
      if @goalie.update(goalie_params)
        format.html { redirect_to @goalie, notice: 'Goalie was successfully updated.' }
        format.json { render :show, status: :ok, location: @goalie }
      else
        format.html { render :edit }
        format.json { render json: @goalie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goalies/1
  # DELETE /goalies/1.json
  def destroy
    @goalie.destroy
    respond_to do |format|
      format.html { redirect_to goalies_url, notice: 'Goalie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goalie
      @goalie = Goalie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goalie_params
      params.require(:goalie).permit(:playoffs, :year, :player, :age, :team, :gp, :w, :l, :ot, :ga, :sa, :sv, :svp, :gaa, :so, :minutes, :g, :a, :pts, :pim, :firstname, :lastname)
    end

    def sort_column
      Goalie.column_names.include?(params[:sort]) ? params[:sort] : "year"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"    
    end
end
