require "application_system_test_case"

class MensalidadesTest < ApplicationSystemTestCase
  setup do
    @mensalidade = mensalidades(:one)
  end

  test "visiting the index" do
    visit mensalidades_url
    assert_selector "h1", text: "Mensalidades"
  end

  test "creating a Mensalidade" do
    visit mensalidades_url
    click_on "New Mensalidade"

    fill_in "Inquilino", with: @mensalidade.inquilino_id
    fill_in "Mes", with: @mensalidade.mes
    check "Pago" if @mensalidade.pago
    click_on "Create Mensalidade"

    assert_text "Mensalidade was successfully created"
    click_on "Back"
  end

  test "updating a Mensalidade" do
    visit mensalidades_url
    click_on "Edit", match: :first

    fill_in "Inquilino", with: @mensalidade.inquilino_id
    fill_in "Mes", with: @mensalidade.mes
    check "Pago" if @mensalidade.pago
    click_on "Update Mensalidade"

    assert_text "Mensalidade was successfully updated"
    click_on "Back"
  end

  test "destroying a Mensalidade" do
    visit mensalidades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mensalidade was successfully destroyed"
  end
end
