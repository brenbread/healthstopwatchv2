require 'test_helper'

class StopwatchesControllerTest < ActionController::TestCase
  setup do
    @stopwatch = stopwatches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stopwatches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stopwatch" do
    assert_difference('Stopwatch.count') do
      post :create, stopwatch: { medicine: @stopwatch.medicine, time: @stopwatch.time }
    end

    assert_redirected_to stopwatch_path(assigns(:stopwatch))
  end

  test "should show stopwatch" do
    get :show, id: @stopwatch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stopwatch
    assert_response :success
  end

  test "should update stopwatch" do
    patch :update, id: @stopwatch, stopwatch: { medicine: @stopwatch.medicine, time: @stopwatch.time }
    assert_redirected_to stopwatch_path(assigns(:stopwatch))
  end

  test "should destroy stopwatch" do
    assert_difference('Stopwatch.count', -1) do
      delete :destroy, id: @stopwatch
    end

    assert_redirected_to stopwatches_path
  end
end
