class AlunosController < ApplicationController
  #before_action :set_aluno, only: %i[ show edit update destroy ]

  # GET /alunos or /alunos.json
  def index
    @alunos = Aluno.all
  end

  # GET /alunos/1 or /alunos/1.json
  def show
    @turma = Turma.find(params[:turma_id])
    @aluno = @turma.alunos.find(params[:id])
  end

  # GET /alunos/new
  def new
    @turma = Turma.find(params[:turma_id])
    @aluno = @turma.alunos.build
  end

  # GET /alunos/1/edit
  def edit
    @turma = Turma.find(params[:turma_id])
    @aluno = @turma.alunos.find(params[:id])
  end

  # POST /alunos or /alunos.json
  def create
    @turma = Turma.find(params[:turma_id])
    @aluno = @turma.alunos.create(aluno_params)

    respond_to do |format|
      if @aluno.save
        format.html { redirect_to turmas_path(@turma), notice: "Aluno was successfully created." }
        format.json { render :show, status: :created, location: @aluno }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aluno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alunos/1 or /alunos/1.json
  def update
    @turma = Turma.find(params[:turma_id])
    @aluno = @turma.alunos.find(params[:id])

    respond_to do |format|
      if @aluno.update(aluno_params)
        format.html { redirect_to turmas_path(@turma), notice: "Aluno was successfully updated." }
        format.json { render :show, status: :ok, location: @aluno }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aluno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alunos/1 or /alunos/1.json
  def destroy
    @turma = Turma.find(params[:turma_id])
    @aluno = @turma.alunos.find(params[:id])

    @aluno.destroy
    respond_to do |format|
      format.html { redirect_to alunos_url, notice: "Aluno was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def aluno_params
      params.require(:aluno).permit(:nome)
    end
end
