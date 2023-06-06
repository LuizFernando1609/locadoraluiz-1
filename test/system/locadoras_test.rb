require "application_system_test_case"

class LocadorasTest < ApplicationSystemTestCase
  setup do
    @locadora = locadoras(:one)
  end

  test "visiting the index" do
    visit locadoras_url
    assert_selector "h1", text: "Locadoras"
  end

  test "should create locadora" do
    visit locadoras_url
    click_on "New locadora"

    fill_in "Contato", with: @locadora.contato
    fill_in "Data de devolucao", with: @locadora.data_de_devolucao
    fill_in "Data de locacao", with: @locadora.data_de_locacao
    fill_in "Endereco", with: @locadora.endereco
    fill_in "Nome", with: @locadora.nome
    fill_in "Valor total", with: @locadora.valor_total
    click_on "Create Locadora"

    assert_text "Locadora was successfully created"
    click_on "Back"
  end

  test "should update Locadora" do
    visit locadora_url(@locadora)
    click_on "Edit this locadora", match: :first

    fill_in "Contato", with: @locadora.contato
    fill_in "Data de devolucao", with: @locadora.data_de_devolucao
    fill_in "Data de locacao", with: @locadora.data_de_locacao
    fill_in "Endereco", with: @locadora.endereco
    fill_in "Nome", with: @locadora.nome
    fill_in "Valor total", with: @locadora.valor_total
    click_on "Update Locadora"

    assert_text "Locadora was successfully updated"
    click_on "Back"
  end

  test "should destroy Locadora" do
    visit locadora_url(@locadora)
    click_on "Destroy this locadora", match: :first

    assert_text "Locadora was successfully destroyed"
  end
end
