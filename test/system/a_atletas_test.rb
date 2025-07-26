require "application_system_test_case"

class AAtletaTest < ApplicationSystemTestCase
  setup do
    @a_atleta = a_atletas(:one)
  end

  test "visiting the index" do
    visit a_atletas_url
    assert_selector "h1", text: "A atleta"
  end

  test "should create a atleta" do
    visit a_atletas_url
    click_on "New a atleta"

    fill_in "A sexo", with: @a_atleta.a_sexo_id
    fill_in "A unidade treinamento", with: @a_atleta.a_unidade_treinamento_id
    fill_in "Bairro", with: @a_atleta.bairro
    fill_in "Cep", with: @a_atleta.cep
    fill_in "Complemento", with: @a_atleta.complemento
    fill_in "Contato1", with: @a_atleta.contato1
    fill_in "Contato2", with: @a_atleta.contato2
    fill_in "Cpf", with: @a_atleta.cpf
    fill_in "Created by", with: @a_atleta.created_by
    fill_in "Data nascimento", with: @a_atleta.data_nascimento
    fill_in "Deleted at", with: @a_atleta.deleted_at
    fill_in "Descricao necessidade", with: @a_atleta.descricao_necessidade
    fill_in "G cidade", with: @a_atleta.g_cidade_id
    fill_in "G estado", with: @a_atleta.g_estado_id
    fill_in "Nacionalidade", with: @a_atleta.nacionalidade
    fill_in "Nome", with: @a_atleta.nome
    fill_in "Nome mae", with: @a_atleta.nome_mae
    fill_in "Nome pai", with: @a_atleta.nome_pai
    fill_in "Numero", with: @a_atleta.numero
    check "Portador necessidade" if @a_atleta.portador_necessidade
    fill_in "Responsavel cpf", with: @a_atleta.responsavel_cpf
    fill_in "Responsavel nome", with: @a_atleta.responsavel_nome
    fill_in "Responsavel orientacao", with: @a_atleta.responsavel_orientacao
    fill_in "Responsavel rg", with: @a_atleta.responsavel_rg
    fill_in "Rua", with: @a_atleta.rua
    fill_in "Updated by", with: @a_atleta.updated_by
    click_on "Create A atleta"

    assert_text "A atleta was successfully created"
    click_on "Back"
  end

  test "should update A atleta" do
    visit a_atleta_url(@a_atleta)
    click_on "Edit this a atleta", match: :first

    fill_in "A sexo", with: @a_atleta.a_sexo_id
    fill_in "A unidade treinamento", with: @a_atleta.a_unidade_treinamento_id
    fill_in "Bairro", with: @a_atleta.bairro
    fill_in "Cep", with: @a_atleta.cep
    fill_in "Complemento", with: @a_atleta.complemento
    fill_in "Contato1", with: @a_atleta.contato1
    fill_in "Contato2", with: @a_atleta.contato2
    fill_in "Cpf", with: @a_atleta.cpf
    fill_in "Created by", with: @a_atleta.created_by
    fill_in "Data nascimento", with: @a_atleta.data_nascimento
    fill_in "Deleted at", with: @a_atleta.deleted_at.to_s
    fill_in "Descricao necessidade", with: @a_atleta.descricao_necessidade
    fill_in "G cidade", with: @a_atleta.g_cidade_id
    fill_in "G estado", with: @a_atleta.g_estado_id
    fill_in "Nacionalidade", with: @a_atleta.nacionalidade
    fill_in "Nome", with: @a_atleta.nome
    fill_in "Nome mae", with: @a_atleta.nome_mae
    fill_in "Nome pai", with: @a_atleta.nome_pai
    fill_in "Numero", with: @a_atleta.numero
    check "Portador necessidade" if @a_atleta.portador_necessidade
    fill_in "Responsavel cpf", with: @a_atleta.responsavel_cpf
    fill_in "Responsavel nome", with: @a_atleta.responsavel_nome
    fill_in "Responsavel orientacao", with: @a_atleta.responsavel_orientacao
    fill_in "Responsavel rg", with: @a_atleta.responsavel_rg
    fill_in "Rua", with: @a_atleta.rua
    fill_in "Updated by", with: @a_atleta.updated_by
    click_on "Update A atleta"

    assert_text "A atleta was successfully updated"
    click_on "Back"
  end

  test "should destroy A atleta" do
    visit a_atleta_url(@a_atleta)
    click_on "Destroy this a atleta", match: :first

    assert_text "A atleta was successfully destroyed"
  end
end
