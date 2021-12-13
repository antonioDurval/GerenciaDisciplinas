Given('Eu estou logado com login {string} e senha {string}') do |email, senha|
  visit '/users/sign_in'
  fill_in 'user[email]', :with => email
  fill_in 'user[password]', :with => senha
  click_button 'Log in'
end

Given('A turma de letra {string}, ano {string} e ano letivo {string} existe') do |letra, ano, ano_letivo|
  visit '/turmas/new'
  fill_in 'turma[letra]', :with => letra
  fill_in 'turma[ano]', :with => ano
  fill_in 'turma[ano_letivo]', :with => ano_letivo
  click_button 'Create Turma'
end

Given('Eu estou na pagina de cadastro de disciplina') do
  visit '/disciplinas/new'
end

Given('Preencho nome com {string}, ano letivo com {string} e seleciono a turma {string} {string} de {string}') do |nome, ano_letivo, ano, letra, anoLetivo|
  fill_in 'disciplina[nome]', :with => nome
  fill_in 'disciplina[ano_letivo]', :with => ano_letivo
  select ano, from:'disciplina[turma1_id]'
  select letra, from:'disciplina[turma_id]'
  select anoLetivo, from:'disciplina[turma2_id]'
end

Given('A disciplina de nome {string}, ano letivo {string} e turma do {string} ano {string} de {string} existe') do |nome, ano_letivo, ano, letra, anoLetivo|
  visit '/disciplinas/new'
  fill_in 'disciplina[nome]', :with => nome
  fill_in 'disciplina[ano_letivo]', :with => ano_letivo
  select ano, from:'disciplina[turma1_id]'
  select letra, from:'disciplina[turma_id]'
  select anoLetivo, from:'disciplina[turma2_id]'
  click_button 'Create Disciplina'
end

Given('Eu estou na pagina das disciplinas') do
  visit '/disciplinas'
end


Given('Clico em editar a disciplina de nome {string}') do |nome|
  click_link "e-#{nome}"
end

When('Clico em editar a disciplina') do
  click_button 'Update Disciplina'
end


When('Clico em cadastrar disciplina') do
  click_button 'Create Disciplina'
end

Then('Vejo que a disciplina de nome {string} foi criada') do |disciplina|
  page.has_content?(disciplina)
end

Then('Vejo que a disciplina foi alterada com nome {string} e ano letivo {string}') do |nome, ano_letivo|
  page.has_content?(nome)
  page.has_content?(ano_letivo)
end

