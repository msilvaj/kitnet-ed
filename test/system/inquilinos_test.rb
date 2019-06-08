require "application_system_test_case"

class InquilinosTest < ApplicationSystemTestCase
  setup do
    @inquilino = inquilinos(:one)
  end

  test "visiting the index" do
    visit inquilinos_url
    assert_selector "h1", text: "Inquilinos"
  end

  test "creating a Inquilino" do
    visit inquilinos_url
    click_on "New Inquilino"

    fill_in "Ap", with: @inquilino.ap
    fill_in "Codigoeletrobras", with: @inquilino.codigoEletrobras
    fill_in "Cpf", with: @inquilino.cpf
    fill_in "Datafim", with: @inquilino.dataFim
    fill_in "Datainicio", with: @inquilino.dataInicio
    fill_in "Datavencimento", with: @inquilino.dataVencimento
    fill_in "Nome", with: @inquilino.nome
    check "Pago" if @inquilino.pago
    fill_in "Rg", with: @inquilino.rg
    fill_in "Telefone", with: @inquilino.telefone
    click_on "Create Inquilino"

    assert_text "Inquilino was successfully created"
    click_on "Back"
  end

  test "updating a Inquilino" do
    visit inquilinos_url
    click_on "Edit", match: :first

    fill_in "Ap", with: @inquilino.ap
    fill_in "Codigoeletrobras", with: @inquilino.codigoEletrobras
    fill_in "Cpf", with: @inquilino.cpf
    fill_in "Datafim", with: @inquilino.dataFim
    fill_in "Datainicio", with: @inquilino.dataInicio
    fill_in "Datavencimento", with: @inquilino.dataVencimento
    fill_in "Nome", with: @inquilino.nome
    check "Pago" if @inquilino.pago
    fill_in "Rg", with: @inquilino.rg
    fill_in "Telefone", with: @inquilino.telefone
    click_on "Update Inquilino"

    assert_text "Inquilino was successfully updated"
    click_on "Back"
  end

  test "destroying a Inquilino" do
    visit inquilinos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inquilino was successfully destroyed"
  end
end
