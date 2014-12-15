require 'test_helper'

class TaxiControllerTest < ActionController::TestCase
  test "should get form" do
    get :form
    assert_response :success
  end

end
