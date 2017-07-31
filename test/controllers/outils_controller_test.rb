require 'test_helper'

class OutilsControllerTest < ActionDispatch::IntegrationTest
  test "should get send_visite" do
    get outils_send_visite_url
    assert_response :success
  end

  test "should get calculatrice" do
    get outils_calculatrice_url
    assert_response :success
  end

  test "should get comtpte_goutte" do
    get outils_comtpte_goutte_url
    assert_response :success
  end

  test "should get pansements" do
    get outils_pansements_url
    assert_response :success
  end

  test "should get coma" do
    get outils_coma_url
    assert_response :success
  end

end
