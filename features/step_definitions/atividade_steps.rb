Given('Eu estou na pagina de cadastro de atividade') do
  click_link 'Adicionar atividade na disciplina'
end

Given('Preencho titulo com {string}, descricao {string}, bimestre {string} e data {string}') do |titulo, descricao, bimestre, data|
  fill_in 'atividade[titulo]', :with => titulo
  fill_in 'atividade[descricao]', :with => descricao
  fill_in 'atividade[bimestre]', :with => bimestre
  fill_in 'atividade[data]', :with => data
end

When('Clico em cadastrar a atividade') do
  click_button 'Create Atividade'
end

Then('Vejo que a atividade foi criada com sucesso') do
  page.has_content?('Atividade was successfully created.')
end
