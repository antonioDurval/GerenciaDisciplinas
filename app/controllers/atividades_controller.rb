class AtividadesController < ApplicationController
  #before_action :set_atividade, only: %i[ show edit update destroy ]

  # GET /atividades or /atividades.json
  def index
    @atividades = Atividade.all
  end

  # GET /atividades/1 or /atividades/1.json
  def show
    @disciplina = Disciplina.find(params[:disciplina_id])
    @atividade = @disciplina.atividades.find(params[:id])
  end

  # GET /atividades/new
  def new
    @disciplina = Disciplina.find(params[:disciplina_id])
    @atividade = @disciplina.atividades.build
  end

  # GET /atividades/1/edit
  def edit
    @disciplina = Disciplina.find(params[:disciplina_id])
    @atividade = @disciplina.atividades.find(params[:id])
  end

  # POST /atividades or /atividades.json
  def create
    @disciplina = Disciplina.find(params[:disciplina_id])
    @atividade = @disciplina.atividades.create(atividade_params)

    respond_to do |format|
      if @atividade.save
        format.html { redirect_to disciplinas_path(@disciplina), notice: "Atividade was successfully created." }
        format.json { render :show, status: :created, location: @atividade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @atividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atividades/1 or /atividades/1.json
  def update
    @disciplina = Disciplina.find(params[:disciplina_id])
    @atividade = @disciplina.atividades.find(params[:id])

    respond_to do |format|
      if @atividade.update(atividade_params)
        format.html { redirect_to disciplinas_path(@disciplina), notice: "Atividade was successfully updated." }
        format.json { render :show, status: :ok, location: @atividade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @atividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atividades/1 or /atividades/1.json
  def destroy
    @disciplina = Disciplina.find(params[:disciplina_id])
    @atividade = @disciplina.atividades.find(params[:id])

    @atividade.destroy
    respond_to do |format|
      format.html { redirect_to atividades_url, notice: "Atividade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def atividade_params
      params.require(:atividade).permit(:titulo, :descricao, :bimestre, :data)
    end
end
