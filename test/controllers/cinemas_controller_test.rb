require 'test_helper'

class CinemasControllerTest < ActionController::TestCase
  setup do
    @cinema = cinemas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cinemas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cinema" do
    assert_difference('Cinema.count') do
      post :create, cinema: { address_id: @cinema.address_id, closeTime: @cinema.closeTime, name: @cinema.name, openTime: @cinema.openTime, sunday: @cinema.sunday, monday: @cinema.monday, tuesday: @cinema.tuesday, wednesday: @cinema.wednesday, thursday: @cinema.thursday, friday: @cinema.friday, saturday: @cinema.saturday, holiday_price: @cinema.holiday_price }
    end

    assert_redirected_to cinema_path(assigns(:cinema))
  end

  test "should show cinema" do
    get :show, id: @cinema
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cinema
    assert_response :success
  end

  test "should update cinema" do
    patch :update, id: @cinema, cinema: { address_id: @cinema.address_id, closeTime: @cinema.closeTime, name: @cinema.name, openTime: @cinema.openTime }
    assert_redirected_to cinema_path(assigns(:cinema))
  end

  test "should destroy cinema" do
    assert_difference('Cinema.count', -1) do
      delete :destroy, id: @cinema
    end

    assert_redirected_to cinemas_path
  end
end
