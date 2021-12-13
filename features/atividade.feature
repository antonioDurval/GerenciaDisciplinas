Feature: Atividade

  As a usuario do sistema GerenciaDisciplinas
  I want to cadastrar novas atividades das disciplinas
  so that eu possa ter controle de atividades dentro da disciplina

  Scenario: criar atividade de uma disciplina
    Given O usuario de email "evandro@gmail.com" e senha "123456" existe
    And Eu estou logado com login "evandro@gmail.com" e senha "123456"
    And A turma de letra "A", ano "5" e ano letivo "2020" existe
    And A disciplina de nome "Inglês", ano letivo "2020" e turma do "5" ano "A" de "2020" existe
    Given Eu estou na pagina de cadastro de atividade
    And Preencho titulo com "Modal Verbs", descricao "amanhã", bimestre "1" e data "17-12-2021"
    When Clico em cadastrar a atividade
    Then Vejo que a atividade foi criada com sucesso

  Scenario: criar atividade com titulo menor que 5
    Given O usuario de email "evandro@gmail.com" e senha "123456" existe
    And Eu estou logado com login "evandro@gmail.com" e senha "123456"
    And A turma de letra "A", ano "5" e ano letivo "2020" existe
    And A disciplina de nome "Inglês", ano letivo "2020" e turma do "5" ano "A" de "2020" existe
    Given Eu estou na pagina de cadastro de atividade
    And Preencho titulo com "vrb", descricao "amanhã", bimestre "1" e data "17-12-2021"
    When Clico em cadastrar a atividade
    Then Eu vejo a mensagem de erro "Titulo is too short (minimum is 5 characters)"

  Scenario: criar atividade com descricao vazia
    Given O usuario de email "evandro@gmail.com" e senha "123456" existe
    And Eu estou logado com login "evandro@gmail.com" e senha "123456"
    And A turma de letra "A", ano "5" e ano letivo "2020" existe
    And A disciplina de nome "Inglês", ano letivo "2020" e turma do "5" ano "A" de "2020" existe
    Given Eu estou na pagina de cadastro de atividade
    And Preencho titulo com "Modal Verbs", descricao "amanhã", bimestre "1" e data "17-12-2021"
    When Clico em cadastrar a atividade
    Then Vejo que a atividade foi criada com sucesso