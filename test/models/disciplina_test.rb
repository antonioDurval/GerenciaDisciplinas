require "test_helper"

class DisciplinaTest < ActiveSupport::TestCase
  test "disciplina com nome curto" do
    #criando a turma
    turma = Turma.new(letra: 'A', ano: 8, ano_letivo:2021)
    assert turma.save
    #criando disciplina
    disciplina = Disciplina.new(nome: 'mat', ano_letivo:2021, turma_id:turma.letra, created_at:turma.ano, updated_at:turma.ano_letivo)
    assert_not disciplina.save
  end

  test "disciplina com ano letivo curto" do
    #criando a turma
    turma = Turma.new(letra: 'A', ano: 8, ano_letivo:2021)
    assert turma.save
    #criando disciplina
    disciplina = Disciplina.new(nome: 'matematica', ano_letivo:1, turma_id:turma.letra, created_at:turma.ano, updated_at:turma.ano_letivo)
    assert_not disciplina.save
  end

  test "disciplina com nome vazio" do
    #criando a turma
    turma = Turma.new(letra: 'A', ano: 8, ano_letivo:2021)
    assert turma.save
    #criando disciplina
    disciplina = Disciplina.new(nome: '', ano_letivo:2021, turma_id:turma.letra, created_at:turma.ano, updated_at:turma.ano_letivo)
    assert_not disciplina.save
  end
end
