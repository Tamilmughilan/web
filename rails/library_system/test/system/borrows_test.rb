require "application_system_test_case"

class BorrowsTest < ApplicationSystemTestCase
  setup do
    @borrow = borrows(:one)
  end

  test "visiting the index" do
    visit borrows_url
    assert_selector "h1", text: "Borrows"
  end

  test "should create borrow" do
    visit borrows_url
    click_on "New borrow"

    fill_in "Book", with: @borrow.book_id
    fill_in "Borrowed on", with: @borrow.borrowed_on
    fill_in "Due date", with: @borrow.due_date
    fill_in "Member", with: @borrow.member_id
    click_on "Create Borrow"

    assert_text "Borrow was successfully created"
    click_on "Back"
  end

  test "should update Borrow" do
    visit borrow_url(@borrow)
    click_on "Edit this borrow", match: :first

    fill_in "Book", with: @borrow.book_id
    fill_in "Borrowed on", with: @borrow.borrowed_on
    fill_in "Due date", with: @borrow.due_date
    fill_in "Member", with: @borrow.member_id
    click_on "Update Borrow"

    assert_text "Borrow was successfully updated"
    click_on "Back"
  end

  test "should destroy Borrow" do
    visit borrow_url(@borrow)
    click_on "Destroy this borrow", match: :first

    assert_text "Borrow was successfully destroyed"
  end
end
