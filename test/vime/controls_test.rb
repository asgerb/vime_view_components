require "test_helper"

# FIXME: requires ApplicationController

module Vime
  class ControlsTest < ViewComponent::TestCase
    test "render the component" do
      result = render_inline(Controls.new)
      assert_includes result.css("vime-controls")
    end
  end
end
