require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, person: { child_age: @person.child_age, child_care: @person.child_care, child_language: @person.child_language, email_address: @person.email_address, first_name: @person.first_name, home_country: @person.home_country, payment: @person.payment, phone_number: @person.phone_number, price_category: @person.price_category, price_method: @person.price_method, reference_number: @person.reference_number, second_name: @person.second_name }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person
    assert_response :success
  end

  test "should update person" do
    put :update, id: @person, person: { child_age: @person.child_age, child_care: @person.child_care, child_language: @person.child_language, email_address: @person.email_address, first_name: @person.first_name, home_country: @person.home_country, payment: @person.payment, phone_number: @person.phone_number, price_category: @person.price_category, price_method: @person.price_method, reference_number: @person.reference_number, second_name: @person.second_name }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end
