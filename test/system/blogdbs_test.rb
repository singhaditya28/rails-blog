require "application_system_test_case"

class BlogdbsTest < ApplicationSystemTestCase
  setup do
    @blogdb = blogdbs(:one)
  end

  test "visiting the index" do
    visit blogdbs_url
    assert_selector "h1", text: "Blogdbs"
  end

  test "should create blogdb" do
    visit blogdbs_url
    click_on "New blogdb"

    fill_in "", with: @blogdb.
    fill_in "Content", with: @blogdb.content
    fill_in "Username", with: @blogdb.username
    click_on "Create Blogdb"

    assert_text "Blogdb was successfully created"
    click_on "Back"
  end

  test "should update Blogdb" do
    visit blogdb_url(@blogdb)
    click_on "Edit this blogdb", match: :first

    fill_in "", with: @blogdb.
    fill_in "Content", with: @blogdb.content
    fill_in "Username", with: @blogdb.username
    click_on "Update Blogdb"

    assert_text "Blogdb was successfully updated"
    click_on "Back"
  end

  test "should destroy Blogdb" do
    visit blogdb_url(@blogdb)
    click_on "Destroy this blogdb", match: :first

    assert_text "Blogdb was successfully destroyed"
  end
end
