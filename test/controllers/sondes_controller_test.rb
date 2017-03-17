require 'test_helper'

class SondesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sonde = sondes(:one)
  end

  test "should get index" do
    get sondes_url
    assert_response :success
  end

  test "should get new" do
    get new_sonde_url
    assert_response :success
  end

  test "should create sonde" do
    assert_difference('Sonde.count') do
      post sondes_url, params: { sonde: { modele: @sonde.modele, serie: @sonde.serie } }
    end

    assert_redirected_to sonde_url(Sonde.last)
  end

  test "should show sonde" do
    get sonde_url(@sonde)
    assert_response :success
  end

  test "should get edit" do
    get edit_sonde_url(@sonde)
    assert_response :success
  end

  test "should update sonde" do
    patch sonde_url(@sonde), params: { sonde: { modele: @sonde.modele, serie: @sonde.serie } }
    assert_redirected_to sonde_url(@sonde)
  end

  test "should destroy sonde" do
    assert_difference('Sonde.count', -1) do
      delete sonde_url(@sonde)
    end

    assert_redirected_to sondes_url
  end
end
