require 'test_helper'

class VisitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visite = visites(:one)
  end

  test "should get index" do
    get visites_url
    assert_response :success
  end

  test "should get new" do
    get new_visite_url
    assert_response :success
  end

  test "should create visite" do
    assert_difference('Visite.count') do
      post visites_url, params: { visite: { date: @visite.date, echelle: @visite.echelle, largeur: @visite.largeur, longeur: @visite.longeur, patient_id: @visite.patient_id, profondeur: @visite.profondeur, stade: @visite.stade } }
    end

    assert_redirected_to visite_url(Visite.last)
  end

  test "should show visite" do
    get visite_url(@visite)
    assert_response :success
  end

  test "should get edit" do
    get edit_visite_url(@visite)
    assert_response :success
  end

  test "should update visite" do
    patch visite_url(@visite), params: { visite: { date: @visite.date, echelle: @visite.echelle, largeur: @visite.largeur, longeur: @visite.longeur, patient_id: @visite.patient_id, profondeur: @visite.profondeur, stade: @visite.stade } }
    assert_redirected_to visite_url(@visite)
  end

  test "should destroy visite" do
    assert_difference('Visite.count', -1) do
      delete visite_url(@visite)
    end

    assert_redirected_to visites_url
  end
end
