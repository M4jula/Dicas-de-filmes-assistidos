require "application_system_test_case"

class DicasTest < ApplicationSystemTestCase
  setup do
    @dica = dicas(:one)
  end

  test "visiting the index" do
    visit dicas_url
    assert_selector "h1", text: "Dicas"
  end

  test "should create dica" do
    visit dicas_url
    click_on "New dica"

    fill_in "Descricao", with: @dica.descricao
    fill_in "Genero", with: @dica.genero
    fill_in "Nota", with: @dica.nota
    fill_in "Titulo", with: @dica.titulo
    click_on "Create Dica"

    assert_text "Dica was successfully created"
    click_on "Back"
  end

  test "should update Dica" do
    visit dica_url(@dica)
    click_on "Edit this dica", match: :first

    fill_in "Descricao", with: @dica.descricao
    fill_in "Genero", with: @dica.genero
    fill_in "Nota", with: @dica.nota
    fill_in "Titulo", with: @dica.titulo
    click_on "Update Dica"

    assert_text "Dica was successfully updated"
    click_on "Back"
  end

  test "should destroy Dica" do
    visit dica_url(@dica)
    click_on "Destroy this dica", match: :first

    assert_text "Dica was successfully destroyed"
  end
end
