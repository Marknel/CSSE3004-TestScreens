require 'test_helper'

class ShortAnswerQuestionsControllerTest < ActionController::TestCase
  setup do
    @short_answer_question = short_answer_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:short_answer_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create short_answer_question" do
    assert_difference('ShortAnswerQuestion.count') do
      post :create, :short_answer_question => @short_answer_question.attributes
    end

    assert_redirected_to short_answer_question_path(assigns(:short_answer_question))
  end

  test "should show short_answer_question" do
    get :show, :id => @short_answer_question.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @short_answer_question.to_param
    assert_response :success
  end

  test "should update short_answer_question" do
    put :update, :id => @short_answer_question.to_param, :short_answer_question => @short_answer_question.attributes
    assert_redirected_to short_answer_question_path(assigns(:short_answer_question))
  end

  test "should destroy short_answer_question" do
    assert_difference('ShortAnswerQuestion.count', -1) do
      delete :destroy, :id => @short_answer_question.to_param
    end

    assert_redirected_to short_answer_questions_path
  end
end
