# frozen_string_literal: true

require "test_helper"

module Vime
  module Ui
    class TimeTest < ActiveSupport::TestCase
      test "render components" do
        [
          Time::CurrentTime,
          Time::EndTime,
          Time::TimeProgress,
        ].each do |component_class|
          doc = Nokogiri::HTML.fragment(component_class.new.call)
          assert_predicate doc, :present?
        end
      end

      test "Time component" do
        doc = Nokogiri::HTML.fragment(Time::Time.new(label: "Label").call)
        assert_predicate doc, :present?
      end
    end
  end
end
