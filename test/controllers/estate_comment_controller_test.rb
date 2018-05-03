require 'test_helper'

class EstateCommentControllerTest < ActionDispatch::IntegrationTest
  test "should get commenter:string" do
    get estate_comment_commenter:string_url
    assert_response :success
  end

  test "should get body:text" do
    get estate_comment_body:text_url
    assert_response :success
  end

  test "should get estate:references" do
    get estate_comment_estate:references_url
    assert_response :success
  end

end
