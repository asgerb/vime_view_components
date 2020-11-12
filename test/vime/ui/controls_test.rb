# frozen_string_literal: true

require "test_helper"

module Vime
  module Ui
    class ControlsTest < ActiveSupport::TestCase
      test "render components" do
        [
          Controls::CaptionControl,
          Controls::ControlGroup,
          Controls::Controls,
          Controls::ControlSpacer,
          Controls::FullscreenControl,
          Controls::MuteControl,
          Controls::PlaybackControl,
          Controls::ScrubberControl,
          Controls::SettingsControl,
          Controls::VolumeControl
        ].each do |component_class|
          doc = Nokogiri::HTML.fragment(component_class.new.call)
          assert_predicate doc, :present?
        end
      end

      test "Control component" do
        doc = Nokogiri::HTML.fragment(Controls::Control.new(label: "Label").call)
        assert_predicate doc, :present?
      end
    end
  end
end
