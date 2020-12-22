# frozen_string_literal: true

require "test_helper"

module Vime
  class UiTest < ActiveSupport::TestCase
    test "render components" do
      [
        Ui::Captions,
        Ui::ClickToPlay,
        Ui::DblClickFullscreen,
        Ui::DefaultUi,
        Ui::Icon,
        Ui::IconLibrary,
        Ui::LiveIndicator,
        Ui::Poster,
        Ui::Scrim,
        Ui::Skeleton,
        Ui::Slider,
        Ui::Spinner,
        Ui::Tooltip,
        Ui::Ui,
      ].each do |component_class|
        doc = Nokogiri::HTML.fragment(component_class.new.call)
        assert_predicate doc, :present?
      end
    end
  end
end
