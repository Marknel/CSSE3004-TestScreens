require 'test_helper'

class ShortAnswerKeywordsControllerTest < ActionController::TestCase
  setup do
    @short_answer_keyword = short_answer_keywords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:short_answer_keywords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create short_answer_keyword" do
    assert_difference('ShortAnswerKeyword.count') do
      post :create, :short_answer_keyword => @short_answer_keyword.attributes
    end

    assert_redirected_to short_answer_keyword_path(assigns(:short_answer_keyword))
  end

  test "should show short_answer_keyword" do
    get :show, :id => @short_answer_keyword.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @short_answer_keyword.to_param
    assert_response :success
  end

  test "should update short_answer_keyword" do
    put :update, :id => @short_answer_keyword.to_param, :short_answer_keyword => @short_answer_keyword.attributes
    assert_redirected_to short_answer_keyword_path(assigns(:short_answer_keyword))
  end

  test "should destroy short_answer_keyword" do
    assert_difference('ShortAnswerKeyword.count', -1) do
      delete :destroy, :id => @short_answer_keyword.to_param
    end

    assert_redirected_to short_answer_keywords_path
  end
end
