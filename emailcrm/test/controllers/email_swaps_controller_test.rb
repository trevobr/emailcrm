require 'test_helper'

class EmailSwapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @email_swap = email_swaps(:one)
  end

  test "should get index" do
    get email_swaps_url
    assert_response :success
  end

  test "should get new" do
    get new_email_swap_url
    assert_response :success
  end

  test "should create email_swap" do
    assert_difference('EmailSwap.count') do
      post email_swaps_url, params: { email_swap: { folder: @email_swap.folder, message: @email_swap.message, name: @email_swap.name, subject: @email_swap.subject } }
    end

    assert_redirected_to email_swap_url(EmailSwap.last)
  end

  test "should show email_swap" do
    get email_swap_url(@email_swap)
    assert_response :success
  end

  test "should get edit" do
    get edit_email_swap_url(@email_swap)
    assert_response :success
  end

  test "should update email_swap" do
    patch email_swap_url(@email_swap), params: { email_swap: { folder: @email_swap.folder, message: @email_swap.message, name: @email_swap.name, subject: @email_swap.subject } }
    assert_redirected_to email_swap_url(@email_swap)
  end

  test "should destroy email_swap" do
    assert_difference('EmailSwap.count', -1) do
      delete email_swap_url(@email_swap)
    end

    assert_redirected_to email_swaps_url
  end
end
