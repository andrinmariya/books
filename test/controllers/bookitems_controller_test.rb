require 'test_helper'

class BookitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookitem = bookitems(:one)
  end

  test "should get index" do
    get bookitems_url
    assert_response :success
  end

  test "should get new" do
    get new_bookitem_url
    assert_response :success
  end

  test "should create bookitem" do
    assert_difference('Bookitem.count') do
      post bookitems_url, params: { bookitem: { author: @bookitem.author, bookname: @bookitem.bookname, price: @bookitem.price } }
    end

    assert_redirected_to bookitem_url(Bookitem.last)
  end

  test "should show bookitem" do
    get bookitem_url(@bookitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookitem_url(@bookitem)
    assert_response :success
  end

  test "should update bookitem" do
    patch bookitem_url(@bookitem), params: { bookitem: { author: @bookitem.author, bookname: @bookitem.bookname, price: @bookitem.price } }
    assert_redirected_to bookitem_url(@bookitem)
  end

  test "should destroy bookitem" do
    assert_difference('Bookitem.count', -1) do
      delete bookitem_url(@bookitem)
    end

    assert_redirected_to bookitems_url
  end
end
