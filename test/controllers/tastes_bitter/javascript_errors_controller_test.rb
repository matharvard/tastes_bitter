require 'test_helper'

module TastesBitter

  class JavascriptErrorsControllerTest < ActionController::TestCase

    # setup do
    #   @routes = Engine.routes
    # end

    test "should respond with ok status without params" do
      xhr :post, :create
      assert_response :ok
    end

    test "should respond with ok status with params" do
      params = {
        "message": "A message",
        "file_or_page": "A file or page",
        "line_number": "A line number",
        "user_agent": "A user agent",
        "current_page": "A current page"
      }
      xhr :post, :create, params
      assert_response :ok
    end

  end

end
