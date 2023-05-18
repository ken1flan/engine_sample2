require 'test_helper'

module Special
  class PagesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get pages_index_url
      assert_response :success
    end

  end
end
