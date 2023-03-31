class DicasController < ApplicationController
  before_action :set_dica, only: %i[ show edit update destroy ]

  # GET /dicas or /dicas.json
  def index
    @dicas = Dica.all
  end

  # GET /dicas/1 or /dicas/1.json
  def show
  end

  # GET /dicas/new
  def new
    @dica = Dica.new
  end

  # GET /dicas/1/edit
  def edit
  end

  # POST /dicas or /dicas.json
  def create
    @dica = Dica.new(dica_params)

    respond_to do |format|
      if @dica.save
        format.html { redirect_to dica_url(@dica), notice: "Dica was successfully created." }
        format.json { render :show, status: :created, location: @dica }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dicas/1 or /dicas/1.json
  def update
    respond_to do |format|
      if @dica.update(dica_params)
        format.html { redirect_to dica_url(@dica), notice: "Dica was successfully updated." }
        format.json { render :show, status: :ok, location: @dica }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dicas/1 or /dicas/1.json
  def destroy
    @dica.destroy

    respond_to do |format|
      format.html { redirect_to dicas_url, notice: "Dica was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dica
      @dica = Dica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dica_params
      params.require(:dica).permit(:titulo, :genero, :descricao, :nota)
    end
end
