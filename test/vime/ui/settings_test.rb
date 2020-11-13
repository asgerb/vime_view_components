# frozen_string_literal: true

require "test_helper"

module Vime
  module Ui
    class SettingsTest < ActiveSupport::TestCase
      test "render components" do
        [
          Settings::DefaultSettings,
          Settings::MenuRadioGroup,
          Settings::Settings,
        ].each do |component_class|
          doc = Nokogiri::HTML.fragment(component_class.new.call)
          assert_predicate doc, :present?
        end
      end

      test "MenuItem component" do
        doc = Nokogiri::HTML.fragment(Settings::MenuItem.new(label: "Label").call)
        assert_predicate doc, :present?
      end

      test "MenuRadio component" do
        doc = Nokogiri::HTML.fragment(Settings::MenuRadio.new(label: "Label", value: "Value").call)
        assert_predicate doc, :present?
      end

      test "Menu component" do
        doc = Nokogiri::HTML.fragment(Settings::Menu.new(controller: "Controller", identifier: "Identifier").call)
        assert_predicate doc, :present?
      end

      test "Submenu component" do
        doc = Nokogiri::HTML.fragment(Settings::Submenu.new(label: "Label").call)
        assert_predicate doc, :present?
      end
    end
  end
end
