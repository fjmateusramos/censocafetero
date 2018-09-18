class Encuesta1sController < ApplicationController
  before_action :set_encuesta1, only: [:show, :edit, :update, :destroy]

  # GET /encuesta1s
  # GET /encuesta1s.json
  def index
    @encuesta1s = Encuesta1.all
  end

  # GET /encuesta1s/1
  # GET /encuesta1s/1.json
  def show
  end

  # GET /encuesta1s/new
  def new
    @encuesta1 = Encuesta1.new
  end

  # GET /encuesta1s/1/edit
  def edit
  end

  # POST /encuesta1s
  # POST /encuesta1s.json
  def create
    @encuesta1 = Encuesta1.new(encuesta1_params)

    respond_to do |format|
      if @encuesta1.save
        format.html { redirect_to @encuesta1, notice: 'Encuesta1 was successfully created.' }
        format.json { render :show, status: :created, location: @encuesta1 }
      else
        format.html { render :new }
        format.json { render json: @encuesta1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encuesta1s/1
  # PATCH/PUT /encuesta1s/1.json
  def update
    respond_to do |format|
      if @encuesta1.update(encuesta1_params)
        format.html { redirect_to @encuesta1, notice: 'Encuesta1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @encuesta1 }
      else
        format.html { render :edit }
        format.json { render json: @encuesta1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encuesta1s/1
  # DELETE /encuesta1s/1.json
  def destroy
    @encuesta1.destroy
    respond_to do |format|
      format.html { redirect_to encuesta1s_url, notice: 'Encuesta1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encuesta1
      @encuesta1 = Encuesta1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encuesta1_params
      params.require(:encuesta1).permit(:encuesta)
    end
end
