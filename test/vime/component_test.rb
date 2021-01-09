# frozen_string_literal: true

require "test_helper"

module Vime
  class ComponentTest < ActiveSupport::TestCase
    test "truthy values are converted to non-value attributes" do
      component = Core::Player.new(controls: true).call
      assert_includes component, " controls=\"\" "
      assert_not_includes component, "controls=\"controls\""
    end

    test "closing tag is always present" do
      component = Providers::Vimeo.new(video_id: "12345").call
      assert_includes component, "</vm-vimeo>"
    end
  end
end
