require 'test_helper'

class ProgramsControllerTest < ActionController::TestCase
  setup do
    @program = programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create program" do
    assert_difference('Program.count') do
      post :create, program: { exchange_rate: @program.exchange_rate, price_discount: @program.price_discount, price_full: @program.price_full, price_member: @program.price_member, program_name_en: @program.program_name_en, program_name_hu: @program.program_name_hu }
    end

    assert_redirected_to program_path(assigns(:program))
  end

  test "should show program" do
    get :show, id: @program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @program
    assert_response :success
  end

  test "should update program" do
    put :update, id: @program, program: { exchange_rate: @program.exchange_rate, price_discount: @program.price_discount, price_full: @program.price_full, price_member: @program.price_member, program_name_en: @program.program_name_en, program_name_hu: @program.program_name_hu }
    assert_redirected_to program_path(assigns(:program))
  end

  test "should destroy program" do
    assert_difference('Program.count', -1) do
      delete :destroy, id: @program
    end

    assert_redirected_to programs_path
  end
end
