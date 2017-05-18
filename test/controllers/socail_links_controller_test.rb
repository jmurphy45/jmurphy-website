require 'test_helper'

class SocailLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @socail_link = socail_links(:one)
  end

  test "should get index" do
    get socail_links_url
    assert_response :success
  end

  test "should get new" do
    get new_socail_link_url
    assert_response :success
  end

  test "should create socail_link" do
    assert_difference('SocailLink.count') do
      post socail_links_url, params: { socail_link: { link: @socail_link.link, name: @socail_link.name } }
    end

    assert_redirected_to socail_link_url(SocailLink.last)
  end

  test "should show socail_link" do
    get socail_link_url(@socail_link)
    assert_response :success
  end

  test "should get edit" do
    get edit_socail_link_url(@socail_link)
    assert_response :success
  end

  test "should update socail_link" do
    patch socail_link_url(@socail_link), params: { socail_link: { link: @socail_link.link, name: @socail_link.name } }
    assert_redirected_to socail_link_url(@socail_link)
  end

  test "should destroy socail_link" do
    assert_difference('SocailLink.count', -1) do
      delete socail_link_url(@socail_link)
    end

    assert_redirected_to socail_links_url
  end
end
