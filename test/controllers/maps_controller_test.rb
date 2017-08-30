require 'test_helper'

class MapsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "ClimbingMovieMap"
  end
  
  test "should get home" do
    get maps_home_url
    assert_response :success
    assert_select "title", "home | #{@base_title}"
  end

  test "should get help" do
    get maps_help_url
    assert_response :success
    assert_select "title", "help | #{@base_title}"
  end

end
