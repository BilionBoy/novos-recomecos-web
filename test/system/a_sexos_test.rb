require "application_system_test_case"

class ASexosTest < ApplicationSystemTestCase
  setup do
    @a_sexo = a_sexos(:one)
  end

  test "visiting the index" do
    visit a_sexos_url
    assert_selector "h1", text: "A sexos"
  end

  test "should create a sexo" do
    visit a_sexos_url
    click_on "New a sexo"

    fill_in "Descricao", with: @a_sexo.descricao
    click_on "Create A sexo"

    assert_text "A sexo was successfully created"
    click_on "Back"
  end

  test "should update A sexo" do
    visit a_sexo_url(@a_sexo)
    click_on "Edit this a sexo", match: :first

    fill_in "Descricao", with: @a_sexo.descricao
    click_on "Update A sexo"

    assert_text "A sexo was successfully updated"
    click_on "Back"
  end

  test "should destroy A sexo" do
    visit a_sexo_url(@a_sexo)
    click_on "Destroy this a sexo", match: :first

    assert_text "A sexo was successfully destroyed"
  end
end
