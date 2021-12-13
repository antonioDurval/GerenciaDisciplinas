require "test_helper"

class AtividadeTest < ActiveSupport::TestCase
  test "criando atividade sem disciplina" do
    #criando a turma
    turma = Turma.new(letra: 'A', ano: 8, ano_letivo:2021)
    assert turma.save

    #criando disciplina
    disciplina = Disciplina.new(nome: 'mat', ano_letivo: 2021, turma_id:turma.letra, created_at:turma.ano, updated_at:turma.ano_letivo)
    assert_not disciplina.save

    atividade = Atividade.new(titulo: 'testando', descricao: 'teste2', bimestre: 1, data: '18-12-2021')
    assert_not atividade.save
  end

  test "criando atividade sem bimestre" do
    #criando a turma
    turma = Turma.new(letra: 'A', ano: 8, ano_letivo:2021)
    assert turma.save

    #criando disciplina
    disciplina = Disciplina.new(nome: 'matematica', ano_letivo: 2021, turma_id:turma.letra, created_at:turma.ano, updated_at:turma.ano_letivo)
    assert_not disciplina.save

    atividade = Atividade.new(titulo: 'testando', descricao: 'teste2', bimestre: '', data: '18-12-2021')
    assert_not atividade.save
  end

  test "criando atividade sem titulo" do
    #criando a turma
    turma = Turma.new(letra: 'A', ano: 8, ano_letivo:2021)
    assert turma.save

    #criando disciplina
    disciplina = Disciplina.new(nome: 'matematica', ano_letivo: 2021, turma_id:turma.letra, created_at:turma.ano, updated_at:turma.ano_letivo)
    assert_not disciplina.save

    atividade = Atividade.new(titulo: '', descricao: 'teste2', bimestre: 1, data: '18-12-2021')
    assert_not atividade.save
  end
end
