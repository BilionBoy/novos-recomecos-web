require "test_helper"

class AZonaTreinamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_zona_treinamento = a_zona_treinamentos(:one)
  end

  test "should get index" do
    get a_zona_treinamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_a_zona_treinamento_url
    assert_response :success
  end

  test "should create a_zona_treinamento" do
    assert_difference("AZonaTreinamento.count") do
      post a_zona_treinamentos_url, params: { a_zona_treinamento: { descricao: @a_zona_treinamento.descricao } }
    end

    assert_redirected_to a_zona_treinamento_url(AZonaTreinamento.last)
  end

  test "should show a_zona_treinamento" do
    get a_zona_treinamento_url(@a_zona_treinamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_zona_treinamento_url(@a_zona_treinamento)
    assert_response :success
  end

  test "should update a_zona_treinamento" do
    patch a_zona_treinamento_url(@a_zona_treinamento), params: { a_zona_treinamento: { descricao: @a_zona_treinamento.descricao } }
    assert_redirected_to a_zona_treinamento_url(@a_zona_treinamento)
  end

  test "should destroy a_zona_treinamento" do
    assert_difference("AZonaTreinamento.count", -1) do
      delete a_zona_treinamento_url(@a_zona_treinamento)
    end

    assert_redirected_to a_zona_treinamentos_url
  end
end
