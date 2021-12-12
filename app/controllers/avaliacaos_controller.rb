class AvaliacaosController < ApplicationController
  #before_action :set_avaliacao, only: %i[ show edit update destroy ]

  # GET /avaliacaos or /avaliacaos.json
  def index
    @avaliacaos = Avaliacao.all
  end

  # GET /avaliacaos/1 or /avaliacaos/1.json
  def show
    @avaliacao = Avaliacao.find(params[:id])
  end

  # GET /avaliacaos/new
  def new
    @avaliacao = Avaliacao.new
  end

  # GET /avaliacaos/1/edit
  def edit
    @avaliacao = Avaliacao.find(params[:id])
  end

  # POST /avaliacaos or /avaliacaos.json
  def create
    @aluno = Aluno.find(avaliacao_params[:aluno_id])
    @atividade = Atividade.find(avaliacao_params[:atividade_id])
    @avaliacao = Avaliacao.new(avaliacao_params)
    @aluno.avaliacaos << @avaliacao
    @atividade.avaliacaos << @avaliacao

    respond_to do |format|
      if @avaliacao.save
        format.html { redirect_to @avaliacao, notice: "Avaliacao was successfully created." }
        format.json { render :show, status: :created, location: @avaliacao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @avaliacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avaliacaos/1 or /avaliacaos/1.json
  def update
    @avaliacao = Avaliacao.find(params[:id])

    respond_to do |format|
      if @avaliacao.update(avaliacao_params)
        format.html { redirect_to @avaliacao, notice: "Avaliacao was successfully updated." }
        format.json { render :show, status: :ok, location: @avaliacao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @avaliacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avaliacaos/1 or /avaliacaos/1.json
  def destroy
    @avaliacao = Avaliacao.find(params[:id])

    @avaliacao.destroy
    respond_to do |format|
      format.html { redirect_to avaliacaos_url, notice: "Avaliacao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def avaliacao_params
      params.require(:avaliacao).permit(:pontos, :observacoes, :aluno_id, :atividade_id)
    end
end
