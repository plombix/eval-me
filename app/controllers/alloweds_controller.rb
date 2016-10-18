class AllowedsController < ApplicationController
  before_action :set_allowed, only: [:show, :edit, :update, :destroy]

  # GET /alloweds
  # GET /alloweds.json
  def index
    @alloweds = Allowed.all
  end

  # GET /alloweds/1
  # GET /alloweds/1.json
  def show
  end

  # GET /alloweds/new
  def new
    @allowed = Allowed.new
  end

  # GET /alloweds/1/edit
  def edit
  end

  # POST /alloweds
  # POST /alloweds.json
  def create
    @allowed = Allowed.new(allowed_params)

    respond_to do |format|
      if @allowed.save
        format.html { redirect_to @allowed, notice: 'Allowed was successfully created.' }
        format.json { render :show, status: :created, location: @allowed }
      else
        format.html { render :new }
        format.json { render json: @allowed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alloweds/1
  # PATCH/PUT /alloweds/1.json
  def update
    respond_to do |format|
      if @allowed.update(allowed_params)
        format.html { redirect_to @allowed, notice: 'Allowed was successfully updated.' }
        format.json { render :show, status: :ok, location: @allowed }
      else
        format.html { render :edit }
        format.json { render json: @allowed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alloweds/1
  # DELETE /alloweds/1.json
  def destroy
    @allowed.destroy
    respond_to do |format|
      format.html { redirect_to alloweds_url, notice: 'Allowed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allowed
      @allowed = Allowed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allowed_params
      params.require(:allowed).permit(:email)
    end
end
