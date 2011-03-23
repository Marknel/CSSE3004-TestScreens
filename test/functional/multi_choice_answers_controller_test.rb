require 'test_helper'

class MultiChoiceAnswersControllerTest < ActionController::TestCase
  setup do
    @multi_choice_answer = multi_choice_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:multi_choice_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create multi_choice_answer" do
    assert_difference('MultiChoiceAnswer.count') do
      post :create, :multi_choice_answer => @multi_choice_answer.attributes
    end

    assert_redirected_to multi_choice_answer_path(assigns(:multi_choice_answer))
  end

  test "should show multi_choice_answer" do
    get :show, :id => @multi_choice_answer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @multi_choice_answer.to_param
    assert_response :success
  end

  test "should update multi_choice_answer" do
    put :update, :id => @multi_choice_answer.to_param, :multi_choice_answer => @multi_choice_answer.attributes
    assert_redirected_to multi_choice_answer_path(assigns(:multi_choice_answer))
  end

  test "should destroy multi_choice_answer" do
    assert_difference('MultiChoiceAnswer.count', -1) do
      delete :destroy, :id => @multi_choice_answer.to_param
    end

    assert_redirected_to multi_choice_answers_path
  end
end
