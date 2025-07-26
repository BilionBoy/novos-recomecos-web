require "test_helper"

class AAtletasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_atleta = a_atletas(:one)
  end

  test "should get index" do
    get a_atletas_url
    assert_response :success
  end

  test "should get new" do
    get new_a_atleta_url
    assert_response :success
  end

  test "should create a_atleta" do
    assert_difference("AAtleta.count") do
      post a_atletas_url, params: { a_atleta: { a_sexo_id: @a_atleta.a_sexo_id, a_unidade_treinamento_id: @a_atleta.a_unidade_treinamento_id, bairro: @a_atleta.bairro, cep: @a_atleta.cep, complemento: @a_atleta.complemento, contato1: @a_atleta.contato1, contato2: @a_atleta.contato2, cpf: @a_atleta.cpf, created_by: @a_atleta.created_by, data_nascimento: @a_atleta.data_nascimento, deleted_at: @a_atleta.deleted_at, descricao_necessidade: @a_atleta.descricao_necessidade, g_cidade_id: @a_atleta.g_cidade_id, g_estado_id: @a_atleta.g_estado_id, nacionalidade: @a_atleta.nacionalidade, nome: @a_atleta.nome, nome_mae: @a_atleta.nome_mae, nome_pai: @a_atleta.nome_pai, numero: @a_atleta.numero, portador_necessidade: @a_atleta.portador_necessidade, responsavel_cpf: @a_atleta.responsavel_cpf, responsavel_nome: @a_atleta.responsavel_nome, responsavel_orientacao: @a_atleta.responsavel_orientacao, responsavel_rg: @a_atleta.responsavel_rg, rua: @a_atleta.rua, updated_by: @a_atleta.updated_by } }
    end

    assert_redirected_to a_atleta_url(AAtleta.last)
  end

  test "should show a_atleta" do
    get a_atleta_url(@a_atleta)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_atleta_url(@a_atleta)
    assert_response :success
  end

  test "should update a_atleta" do
    patch a_atleta_url(@a_atleta), params: { a_atleta: { a_sexo_id: @a_atleta.a_sexo_id, a_unidade_treinamento_id: @a_atleta.a_unidade_treinamento_id, bairro: @a_atleta.bairro, cep: @a_atleta.cep, complemento: @a_atleta.complemento, contato1: @a_atleta.contato1, contato2: @a_atleta.contato2, cpf: @a_atleta.cpf, created_by: @a_atleta.created_by, data_nascimento: @a_atleta.data_nascimento, deleted_at: @a_atleta.deleted_at, descricao_necessidade: @a_atleta.descricao_necessidade, g_cidade_id: @a_atleta.g_cidade_id, g_estado_id: @a_atleta.g_estado_id, nacionalidade: @a_atleta.nacionalidade, nome: @a_atleta.nome, nome_mae: @a_atleta.nome_mae, nome_pai: @a_atleta.nome_pai, numero: @a_atleta.numero, portador_necessidade: @a_atleta.portador_necessidade, responsavel_cpf: @a_atleta.responsavel_cpf, responsavel_nome: @a_atleta.responsavel_nome, responsavel_orientacao: @a_atleta.responsavel_orientacao, responsavel_rg: @a_atleta.responsavel_rg, rua: @a_atleta.rua, updated_by: @a_atleta.updated_by } }
    assert_redirected_to a_atleta_url(@a_atleta)
  end

  test "should destroy a_atleta" do
    assert_difference("AAtleta.count", -1) do
      delete a_atleta_url(@a_atleta)
    end

    assert_redirected_to a_atletas_url
  end
end
