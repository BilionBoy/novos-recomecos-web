require "test_helper"

class AUnidadeTreinamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_unidade_treinamento = a_unidade_treinamentos(:one)
  end

  test "should get index" do
    get a_unidade_treinamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_a_unidade_treinamento_url
    assert_response :success
  end

  test "should create a_unidade_treinamento" do
    assert_difference("AUnidadeTreinamento.count") do
      post a_unidade_treinamentos_url, params: { a_unidade_treinamento: { a_zona_treinamento_id: @a_unidade_treinamento.a_zona_treinamento_id, descricao: @a_unidade_treinamento.descricao } }
    end

    assert_redirected_to a_unidade_treinamento_url(AUnidadeTreinamento.last)
  end

  test "should show a_unidade_treinamento" do
    get a_unidade_treinamento_url(@a_unidade_treinamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_unidade_treinamento_url(@a_unidade_treinamento)
    assert_response :success
  end

  test "should update a_unidade_treinamento" do
    patch a_unidade_treinamento_url(@a_unidade_treinamento), params: { a_unidade_treinamento: { a_zona_treinamento_id: @a_unidade_treinamento.a_zona_treinamento_id, descricao: @a_unidade_treinamento.descricao } }
    assert_redirected_to a_unidade_treinamento_url(@a_unidade_treinamento)
  end

  test "should destroy a_unidade_treinamento" do
    assert_difference("AUnidadeTreinamento.count", -1) do
      delete a_unidade_treinamento_url(@a_unidade_treinamento)
    end

    assert_redirected_to a_unidade_treinamentos_url
  end
end
