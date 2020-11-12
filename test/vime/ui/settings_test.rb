# frozen_string_literal: true

require "test_helper"

module Vime
  module Ui
    class SettingsTest < ActiveSupport::TestCase
      test "render components" do
        [
          Settings::DefaultSettings,
        ].each do |component_class|
          doc = Nokogiri::HTML.fragment(component_class.new.call)
          assert_predicate doc, :present?
        end
      end
    end
  end
end
