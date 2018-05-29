class AdjuntosController < ApplicationController
  before_action :set_adjunto, only: [:show, :edit, :update, :destroy]

  # GET /adjuntos
  # GET /adjuntos.json
  def index
    @adjuntos = Adjunto.all
  end

  # GET /adjuntos/1
  # GET /adjuntos/1.json
  def show
  end

  # GET /adjuntos/new
  def new
    @adjunto = Adjunto.new
  end

  # GET /adjuntos/1/edit
  def edit
  end

  # POST /adjuntos
  # POST /adjuntos.json
  def create
    @adjunto = Adjunto.new(adjunto_params)

    respond_to do |format|
      if @adjunto.save
        format.html { redirect_to @adjunto, notice: 'Adjunto was successfully created.' }
        format.json { render :show, status: :created, location: @adjunto }
      else
        format.html { render :new }
        format.json { render json: @adjunto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adjuntos/1
  # PATCH/PUT /adjuntos/1.json
  def update
    respond_to do |format|
      if @adjunto.update(adjunto_params)
        format.html { redirect_to @adjunto, notice: 'Adjunto was successfully updated.' }
        format.json { render :show, status: :ok, location: @adjunto }
      else
        format.html { render :edit }
        format.json { render json: @adjunto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adjuntos/1
  # DELETE /adjuntos/1.json
  def destroy
    @adjunto.destroy
    respond_to do |format|
      format.html { redirect_to adjuntos_url, notice: 'Adjunto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adjunto
      @adjunto = Adjunto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adjunto_params
      params.require(:adjunto).permit(:nombre, :descripcion, :request_id)
    end
end
