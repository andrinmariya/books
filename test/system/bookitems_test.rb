require "application_system_test_case"

class BookitemsTest < ApplicationSystemTestCase
  setup do
    @bookitem = bookitems(:one)
  end

  test "visiting the index" do
    visit bookitems_url
    assert_selector "h1", text: "Bookitems"
  end

  test "creating a Bookitem" do
    visit bookitems_url
    click_on "New Bookitem"

    fill_in "Author", with: @bookitem.author
    fill_in "Bookname", with: @bookitem.bookname
    fill_in "Price", with: @bookitem.price
    click_on "Create Bookitem"

    assert_text "Bookitem was successfully created"
    click_on "Back"
  end

  test "updating a Bookitem" do
    visit bookitems_url
    click_on "Edit", match: :first

    fill_in "Author", with: @bookitem.author
    fill_in "Bookname", with: @bookitem.bookname
    fill_in "Price", with: @bookitem.price
    click_on "Update Bookitem"

    assert_text "Bookitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookitem" do
    visit bookitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookitem was successfully destroyed"
  end
end
