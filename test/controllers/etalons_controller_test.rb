require 'test_helper'

class EtalonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etalon = etalons(:one)
  end

  test "should get index" do
    get etalons_url
    assert_response :success
  end

  test "should get new" do
    get new_etalon_url
    assert_response :success
  end

  test "should create etalon" do
    assert_difference('Etalon.count') do
      post etalons_url, params: { etalon: { modele: @etalon.modele, serie: @etalon.serie } }
    end

    assert_redirected_to etalon_url(Etalon.last)
  end

  test "should show etalon" do
    get etalon_url(@etalon)
    assert_response :success
  end

  test "should get edit" do
    get edit_etalon_url(@etalon)
    assert_response :success
  end

  test "should update etalon" do
    patch etalon_url(@etalon), params: { etalon: { modele: @etalon.modele, serie: @etalon.serie } }
    assert_redirected_to etalon_url(@etalon)
  end

  test "should destroy etalon" do
    assert_difference('Etalon.count', -1) do
      delete etalon_url(@etalon)
    end

    assert_redirected_to etalons_url
  end
end
