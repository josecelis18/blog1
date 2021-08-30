require "test_helper"

class CommentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commente = commentes(:one)
  end

  test "should get index" do
    get commentes_url
    assert_response :success
  end

  test "should get new" do
    get new_commente_url
    assert_response :success
  end

  test "should create commente" do
    assert_difference('Commente.count') do
      post commentes_url, params: { commente: { body: @commente.body, post: @commente.post } }
    end

    assert_redirected_to commente_url(Commente.last)
  end

  test "should show commente" do
    get commente_url(@commente)
    assert_response :success
  end

  test "should get edit" do
    get edit_commente_url(@commente)
    assert_response :success
  end

  test "should update commente" do
    patch commente_url(@commente), params: { commente: { body: @commente.body, post: @commente.post } }
    assert_redirected_to commente_url(@commente)
  end

  test "should destroy commente" do
    assert_difference('Commente.count', -1) do
      delete commente_url(@commente)
    end

    assert_redirected_to commentes_url
  end
end
