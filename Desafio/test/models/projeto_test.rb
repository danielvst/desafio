require "test_helper"
class ProjetoTest < ActiveSupport::TestCase
  test "Salvar sem nome" do
    projeto = Projeto.new
    projeto.datainicio = '01-01-2021'
    projeto.datafim = '31-01-2021'
    assert !projeto.save
  end

  test "Salvar sem data inicio" do
    projeto = Projeto.new
    projeto.nome = 'Projeto Teste'
    projeto.datafim = '31-01-2021'
    assert !projeto.save
  end

  test "Salvar sem data fim" do
    projeto = Projeto.new
    projeto.nome = 'Projeto Teste'
    projeto.datainicio = '01-01-2021'
    assert !projeto.save
  end

  test "Salvar completo" do
    projeto = Projeto.new
    projeto.nome = 'Projeto Teste'
    projeto.datainicio = '01-01-2021'
    projeto.datafim = '31-01-2021'
    assert projeto.save
  end
end
