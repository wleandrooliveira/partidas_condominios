require 'test_helper'

class PartidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @partida = partidas(:one)
  end

  test "should get index" do
    get partidas_url
    assert_response :success
  end

  test "should get new" do
    get new_partida_url
    assert_response :success
  end

  test "should create partida" do
    assert_difference('Partida.count') do
      post partidas_url, params: { partida: { data_partida: @partida.data_partida, description: @partida.description, local: @partida.local, title: @partida.title } }
    end

    assert_redirected_to partida_url(Partida.last)
  end

  test "should show partida" do
    get partida_url(@partida)
    assert_response :success
  end

  test "should get edit" do
    get edit_partida_url(@partida)
    assert_response :success
  end

  test "should update partida" do
    patch partida_url(@partida), params: { partida: { data_partida: @partida.data_partida, description: @partida.description, local: @partida.local, title: @partida.title } }
    assert_redirected_to partida_url(@partida)
  end

  test "should destroy partida" do
    assert_difference('Partida.count', -1) do
      delete partida_url(@partida)
    end

    assert_redirected_to partidas_url
  end
end
