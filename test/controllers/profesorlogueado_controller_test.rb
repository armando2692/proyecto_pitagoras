require 'test_helper'

class ProfesorlogueadoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
