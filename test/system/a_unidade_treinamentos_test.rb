require "application_system_test_case"

class AUnidadeTreinamentosTest < ApplicationSystemTestCase
  setup do
    @a_unidade_treinamento = a_unidade_treinamentos(:one)
  end

  test "visiting the index" do
    visit a_unidade_treinamentos_url
    assert_selector "h1", text: "A unidade treinamentos"
  end

  test "should create a unidade treinamento" do
    visit a_unidade_treinamentos_url
    click_on "New a unidade treinamento"

    fill_in "A zona treinamento", with: @a_unidade_treinamento.a_zona_treinamento_id
    fill_in "Descricao", with: @a_unidade_treinamento.descricao
    click_on "Create A unidade treinamento"

    assert_text "A unidade treinamento was successfully created"
    click_on "Back"
  end

  test "should update A unidade treinamento" do
    visit a_unidade_treinamento_url(@a_unidade_treinamento)
    click_on "Edit this a unidade treinamento", match: :first

    fill_in "A zona treinamento", with: @a_unidade_treinamento.a_zona_treinamento_id
    fill_in "Descricao", with: @a_unidade_treinamento.descricao
    click_on "Update A unidade treinamento"

    assert_text "A unidade treinamento was successfully updated"
    click_on "Back"
  end

  test "should destroy A unidade treinamento" do
    visit a_unidade_treinamento_url(@a_unidade_treinamento)
    click_on "Destroy this a unidade treinamento", match: :first

    assert_text "A unidade treinamento was successfully destroyed"
  end
end
