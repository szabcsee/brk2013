require 'test_helper'

class TravelsControllerTest < ActionController::TestCase
  setup do
    @travel = travels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel" do
    assert_difference('Travel.count') do
      post :create, travel: { arrival: @travel.arrival, arrival_seats: @travel.arrival_seats, bus_trip: @travel.bus_trip, departure: @travel.departure, departure_seats: @travel.departure_seats, flight_date: @travel.flight_date, flight_number: @travel.flight_number, references: @travel.references }
    end

    assert_redirected_to travel_path(assigns(:travel))
  end

  test "should show travel" do
    get :show, id: @travel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travel
    assert_response :success
  end

  test "should update travel" do
    put :update, id: @travel, travel: { arrival: @travel.arrival, arrival_seats: @travel.arrival_seats, bus_trip: @travel.bus_trip, departure: @travel.departure, departure_seats: @travel.departure_seats, flight_date: @travel.flight_date, flight_number: @travel.flight_number, references: @travel.references }
    assert_redirected_to travel_path(assigns(:travel))
  end

  test "should destroy travel" do
    assert_difference('Travel.count', -1) do
      delete :destroy, id: @travel
    end

    assert_redirected_to travels_path
  end
end
