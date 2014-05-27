require 'test_helper'

class EstudiantenotasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
