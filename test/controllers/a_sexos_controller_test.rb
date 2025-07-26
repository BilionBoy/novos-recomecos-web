require "test_helper"

class ASexosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_sexo = a_sexos(:one)
  end

  test "should get index" do
    get a_sexos_url
    assert_response :success
  end

  test "should get new" do
    get new_a_sexo_url
    assert_response :success
  end

  test "should create a_sexo" do
    assert_difference("ASexo.count") do
      post a_sexos_url, params: { a_sexo: { descricao: @a_sexo.descricao } }
    end

    assert_redirected_to a_sexo_url(ASexo.last)
  end

  test "should show a_sexo" do
    get a_sexo_url(@a_sexo)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_sexo_url(@a_sexo)
    assert_response :success
  end

  test "should update a_sexo" do
    patch a_sexo_url(@a_sexo), params: { a_sexo: { descricao: @a_sexo.descricao } }
    assert_redirected_to a_sexo_url(@a_sexo)
  end

  test "should destroy a_sexo" do
    assert_difference("ASexo.count", -1) do
      delete a_sexo_url(@a_sexo)
    end

    assert_redirected_to a_sexos_url
  end
end
