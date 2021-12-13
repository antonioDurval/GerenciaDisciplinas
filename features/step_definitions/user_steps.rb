Given('Eu estou na pagina de cadastro') do
  visit '/users/sign_up'
end

Given('Eu estou na pagina de login') do
  visit '/users/sign_in'
end

Given('O usuario de email {string} e senha {string} existe') do |email, senha|
  visit '/users/sign_up'
  fill_in 'user[nome]', :with => "teste"
  fill_in 'user[email]', :with => email
  fill_in 'user[password]', :with => senha
  fill_in 'user[password_confirmation]', :with => senha
  click_button 'Sign up'
  click_link 'Sair'
end

Given('Preencho login com {string} e senha com {string}') do |email, senha|
  fill_in 'user[email]', :with => email
  fill_in 'user[password]', :with => senha
end

Given('Preencho nome com {string}, login com {string}, senha com {string} e confirmacao de senha com {string}') do |nome, email, senha, conf_senha|
  fill_in 'user[nome]', :with => nome
  fill_in 'user[email]', :with => email
  fill_in 'user[password]', :with => senha
  fill_in 'user[password_confirmation]', :with => conf_senha
end

When('Clico em cadastrar') do
  click_button 'Sign up'
end

When('Clico em logar') do
  click_button 'Log in'
end

Then('Vejo que o cadastro do login {string} foi efetuado') do |nome|
  page.has_content?(nome)
end

Then('Eu vejo que estou logado com login {string}') do |nome|
  page.has_content?(nome)
end

Then('Eu vejo a mensagem de erro {string}') do |erro|
  page.has_content?(erro)
end
