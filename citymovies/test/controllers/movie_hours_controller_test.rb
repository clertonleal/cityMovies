require 'test_helper'

class MovieHoursControllerTest < ActionController::TestCase
  setup do
    @movie_hour = movie_hours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_hours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_hour" do
    assert_difference('MovieHour.count') do
      post :create, movie_hour: { hour: @movie_hour.hour, room_id: @movie_hour.room_id }
    end

    assert_redirected_to movie_hour_path(assigns(:movie_hour))
  end

  test "should show movie_hour" do
    get :show, id: @movie_hour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_hour
    assert_response :success
  end

  test "should update movie_hour" do
    patch :update, id: @movie_hour, movie_hour: { hour: @movie_hour.hour, room_id: @movie_hour.room_id }
    assert_redirected_to movie_hour_path(assigns(:movie_hour))
  end

  test "should destroy movie_hour" do
    assert_difference('MovieHour.count', -1) do
      delete :destroy, id: @movie_hour
    end

    assert_redirected_to movie_hours_path
  end
end
