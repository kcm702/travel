require 'test_helper'

class AccomodationsControllerTest < ActionController::TestCase
  setup do
    @accomodation = accomodations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accomodations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accomodation" do
    assert_difference('Accomodation.count') do
      post :create, accomodation: { additional_info: @accomodation.additional_info, booking_end_date: @accomodation.booking_end_date, booking_start_date: @accomodation.booking_start_date, phone: @accomodation.phone, price: @accomodation.price, reservation_number: @accomodation.reservation_number, title: @accomodation.title }
    end

    assert_redirected_to accomodation_path(assigns(:accomodation))
  end

  test "should show accomodation" do
    get :show, id: @accomodation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accomodation
    assert_response :success
  end

  test "should update accomodation" do
    put :update, id: @accomodation, accomodation: { additional_info: @accomodation.additional_info, booking_end_date: @accomodation.booking_end_date, booking_start_date: @accomodation.booking_start_date, phone: @accomodation.phone, price: @accomodation.price, reservation_number: @accomodation.reservation_number, title: @accomodation.title }
    assert_redirected_to accomodation_path(assigns(:accomodation))
  end

  test "should destroy accomodation" do
    assert_difference('Accomodation.count', -1) do
      delete :destroy, id: @accomodation
    end

    assert_redirected_to accomodations_path
  end
end
