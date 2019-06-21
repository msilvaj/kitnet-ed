require 'test_helper'

class MensalidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mensalidade = mensalidades(:one)
  end

  test "should get index" do
    get mensalidades_url
    assert_response :success
  end

  test "should get new" do
    get new_mensalidade_url
    assert_response :success
  end

  test "should create mensalidade" do
    assert_difference('Mensalidade.count') do
      post mensalidades_url, params: { mensalidade: { inquilino_id: @mensalidade.inquilino_id, mes: @mensalidade.mes, pago: @mensalidade.pago } }
    end

    assert_redirected_to mensalidade_url(Mensalidade.last)
  end

  test "should show mensalidade" do
    get mensalidade_url(@mensalidade)
    assert_response :success
  end

  test "should get edit" do
    get edit_mensalidade_url(@mensalidade)
    assert_response :success
  end

  test "should update mensalidade" do
    patch mensalidade_url(@mensalidade), params: { mensalidade: { inquilino_id: @mensalidade.inquilino_id, mes: @mensalidade.mes, pago: @mensalidade.pago } }
    assert_redirected_to mensalidade_url(@mensalidade)
  end

  test "should destroy mensalidade" do
    assert_difference('Mensalidade.count', -1) do
      delete mensalidade_url(@mensalidade)
    end

    assert_redirected_to mensalidades_url
  end
end
