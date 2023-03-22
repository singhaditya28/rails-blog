require "test_helper"

class BlogdbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blogdb = blogdbs(:one)
  end

  test "should get index" do
    get blogdbs_url
    assert_response :success
  end

  test "should get new" do
    get new_blogdb_url
    assert_response :success
  end

  test "should create blogdb" do
    assert_difference("Blogdb.count") do
      post blogdbs_url, params: { blogdb: { : @blogdb., content: @blogdb.content, username: @blogdb.username } }
    end

    assert_redirected_to blogdb_url(Blogdb.last)
  end

  test "should show blogdb" do
    get blogdb_url(@blogdb)
    assert_response :success
  end

  test "should get edit" do
    get edit_blogdb_url(@blogdb)
    assert_response :success
  end

  test "should update blogdb" do
    patch blogdb_url(@blogdb), params: { blogdb: { : @blogdb., content: @blogdb.content, username: @blogdb.username } }
    assert_redirected_to blogdb_url(@blogdb)
  end

  test "should destroy blogdb" do
    assert_difference("Blogdb.count", -1) do
      delete blogdb_url(@blogdb)
    end

    assert_redirected_to blogdbs_url
  end
end
