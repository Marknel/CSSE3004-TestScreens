require 'test_helper'

class MultiChoiceQuestionsControllerTest < ActionController::TestCase
  setup do
    @multi_choice_question = multi_choice_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:multi_choice_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create multi_choice_question" do
    assert_difference('MultiChoiceQuestion.count') do
      post :create, :multi_choice_question => @multi_choice_question.attributes
    end

    assert_redirected_to multi_choice_question_path(assigns(:multi_choice_question))
  end

  test "should show multi_choice_question" do
    get :show, :id => @multi_choice_question.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @multi_choice_question.to_param
    assert_response :success
  end

  test "should update multi_choice_question" do
    put :update, :id => @multi_choice_question.to_param, :multi_choice_question => @multi_choice_question.attributes
    assert_redirected_to multi_choice_question_path(assigns(:multi_choice_question))
  end

  test "should destroy multi_choice_question" do
    assert_difference('MultiChoiceQuestion.count', -1) do
      delete :destroy, :id => @multi_choice_question.to_param
    end

    assert_redirected_to multi_choice_questions_path
  end
end
