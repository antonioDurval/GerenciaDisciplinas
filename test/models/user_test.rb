require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "criar usuario" do
    usuario = User.new(nome: 'Antoim', email: 'antoim@gmail.com', password:'123456', password_confirmation:'123456')
    assert usuario.save
  end

  test "criar usuario sem nome" do
    usuario = User.new(nome: '', email: 'antoim@gmail.com', password:'123456', password_confirmation:'123456')
    assert_not usuario.save
  end

  test "criar usuario sem senha" do
    usuario = User.new(nome: 'Jamil', email: 'antoim@gmail.com', password:'', password_confirmation:'')
    assert_not usuario.save
  end
end
