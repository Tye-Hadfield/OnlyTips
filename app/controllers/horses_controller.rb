class HorsesController < ApplicationController
  load_and_authorize_resource
  before_action :set_horse, only: [:show, :edit, :update, :destroy, :horses_view ]
  before_action :set_horses, only: [:set_horses]

  def horses_view
    @horses = Horse.all
  end

  # GET /horses
  # GET /horses.json
  def index
    @horses = Horse.all
  end

  # GET /horses/1
  # GET /horses/1.json
  def show
    @horses = Horse.all
  end

  # GET /horses/new
  def new
    @horse = Horse.new
  end

  # GET /horses/1/edit
  def edit
    @horses = Horse.all
  end

  # POST /horses
  # POST /horses.json
  def create
    @horse = Horse.new(horse_params)

    respond_to do |format|
      if @horse.save
        format.html { redirect_to @horse, notice: 'Horse was successfully created.' }
        format.json { render :show, status: :created, location: @horse }
      else
        format.html { render :new }
        format.json { render json: @horse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horses/1
  # PATCH/PUT /horses/1.json
  def update
    respond_to do |format|
      if @horse.update(horse_params)
        format.html { redirect_to @horse, notice: 'Horse was successfully updated.' }
        format.json { render :show, status: :ok, location: @horse }
      else
        format.html { render :edit }
        format.json { render json: @horse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horses/1
  # DELETE /horses/1.json
  def destroy
    @horse.destroy
    respond_to do |format|
      format.html { redirect_to horses_url, notice: 'Horse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_horses
    @horses = Horse.all
  end


    # Use callbacks to share common setup or constraints between actions.
    def set_horse
      @horses = Horse.all
      @horse = Horse.find(params[:id])
    end

    def horse_params
      params.require(:horse).permit(:horse_name, :horse_number, :jockey, :trainer, :current_win, :current_places, :horse_name)
    end
end
    # Only allow a list of trusted parameters through.
