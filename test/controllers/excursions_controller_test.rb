require 'test_helper'

class ExcursionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @excursion = excursions(:one)
  end

  test "should get index" do
    get excursions_url, as: :json
    assert_response :success
  end

  test "should create excursion" do
    assert_difference('Excursion.count') do
      post excursions_url, params: { excursion: { Capacidad: @excursion.Capacidad, Ciudad: @excursion.Ciudad, Codigo: @excursion.Codigo, Pais: @excursion.Pais, Servicios_Incluidos: @excursion.Servicios_Incluidos, Tarifa: @excursion.Tarifa, supplier_id: @excursion.supplier_id } }, as: :json
    end

    assert_response 201
  end

  test "should show excursion" do
    get excursion_url(@excursion), as: :json
    assert_response :success
  end

  test "should update excursion" do
    patch excursion_url(@excursion), params: { excursion: { Capacidad: @excursion.Capacidad, Ciudad: @excursion.Ciudad, Codigo: @excursion.Codigo, Pais: @excursion.Pais, Servicios_Incluidos: @excursion.Servicios_Incluidos, Tarifa: @excursion.Tarifa, supplier_id: @excursion.supplier_id } }, as: :json
    assert_response 200
  end

  test "should destroy excursion" do
    assert_difference('Excursion.count', -1) do
      delete excursion_url(@excursion), as: :json
    end

    assert_response 204
  end
end
