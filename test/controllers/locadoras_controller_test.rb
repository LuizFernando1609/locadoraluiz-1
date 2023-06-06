require "test_helper"

class LocadorasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @locadora = locadoras(:one)
  end

  test "should get index" do
    get locadoras_url
    assert_response :success
  end

  test "should get new" do
    get new_locadora_url
    assert_response :success
  end

  test "should create locadora" do
    assert_difference("Locadora.count") do
      post locadoras_url, params: { locadora: { contato: @locadora.contato, data_de_devolucao: @locadora.data_de_devolucao, data_de_locacao: @locadora.data_de_locacao, endereco: @locadora.endereco, nome: @locadora.nome, valor_total: @locadora.valor_total } }
    end

    assert_redirected_to locadora_url(Locadora.last)
  end

  test "should show locadora" do
    get locadora_url(@locadora)
    assert_response :success
  end

  test "should get edit" do
    get edit_locadora_url(@locadora)
    assert_response :success
  end

  test "should update locadora" do
    patch locadora_url(@locadora), params: { locadora: { contato: @locadora.contato, data_de_devolucao: @locadora.data_de_devolucao, data_de_locacao: @locadora.data_de_locacao, endereco: @locadora.endereco, nome: @locadora.nome, valor_total: @locadora.valor_total } }
    assert_redirected_to locadora_url(@locadora)
  end

  test "should destroy locadora" do
    assert_difference("Locadora.count", -1) do
      delete locadora_url(@locadora)
    end

    assert_redirected_to locadoras_url
  end
end
