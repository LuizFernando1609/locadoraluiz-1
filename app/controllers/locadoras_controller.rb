class LocadorasController < ApplicationController
  before_action :set_locadora, only: %i[ show edit update destroy ]

  # GET /locadoras or /locadoras.json
  def index
    @locadoras = Locadora.all
  end

  # GET /locadoras/1 or /locadoras/1.json
  def show
  end

  # GET /locadoras/new
  def new
    @locadora = Locadora.new
  end

  # GET /locadoras/1/edit
  def edit
  end

  # POST /locadoras or /locadoras.json
  def create
    @locadora = Locadora.new(locadora_params)

    respond_to do |format|
      if @locadora.save
        format.html { redirect_to locadora_url(@locadora), notice: "Locadora was successfully created." }
        format.json { render :show, status: :created, location: @locadora }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @locadora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locadoras/1 or /locadoras/1.json
  def update
    respond_to do |format|
      if @locadora.update(locadora_params)
        format.html { redirect_to locadora_url(@locadora), notice: "Locadora was successfully updated." }
        format.json { render :show, status: :ok, location: @locadora }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @locadora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locadoras/1 or /locadoras/1.json
  def destroy
    @locadora.destroy

    respond_to do |format|
      format.html { redirect_to locadoras_url, notice: "Locadora was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locadora
      @locadora = Locadora.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def locadora_params
      params.require(:locadora).permit(:nome, :contato, :endereco, :data_de_locacao, :data_de_devolucao, :valor_total, :filme_id)
    end
end
