require 'test_helper'

class Special::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Special
  end
end
