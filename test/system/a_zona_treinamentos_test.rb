require "application_system_test_case"

class AZonaTreinamentosTest < ApplicationSystemTestCase
  setup do
    @a_zona_treinamento = a_zona_treinamentos(:one)
  end

  test "visiting the index" do
    visit a_zona_treinamentos_url
    assert_selector "h1", text: "A zona treinamentos"
  end

  test "should create a zona treinamento" do
    visit a_zona_treinamentos_url
    click_on "New a zona treinamento"

    fill_in "Descricao", with: @a_zona_treinamento.descricao
    click_on "Create A zona treinamento"

    assert_text "A zona treinamento was successfully created"
    click_on "Back"
  end

  test "should update A zona treinamento" do
    visit a_zona_treinamento_url(@a_zona_treinamento)
    click_on "Edit this a zona treinamento", match: :first

    fill_in "Descricao", with: @a_zona_treinamento.descricao
    click_on "Update A zona treinamento"

    assert_text "A zona treinamento was successfully updated"
    click_on "Back"
  end

  test "should destroy A zona treinamento" do
    visit a_zona_treinamento_url(@a_zona_treinamento)
    click_on "Destroy this a zona treinamento", match: :first

    assert_text "A zona treinamento was successfully destroyed"
  end
end
