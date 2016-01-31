require 'test_helper'

class HomeHelpAboutControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | SVSP Training App"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | SVSP Training App"
  end

  test "should get about" do
    get :about
    # gets the about route and looks for a 200 status
    assert_response :success
    # selects the title html selector and chacks that it says what is written here
    assert_select "title", "About | SVSP Training App"
  end

end
