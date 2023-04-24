# frozen_string_literal: true

require "test_helper"

module Vime
  class CoreTest < ActiveSupport::TestCase
    test "render components" do
      [
        Core::Player,
      ].each do |component_class|
        doc = Nokogiri::HTML.fragment(component_class.new.call)
        assert_predicate doc, :present?
      end
    end

    test "Embed component" do
      doc = Nokogiri::HTML.fragment(Core::Embed.new(embed_src: "https://youtu.be/9P-ujzCuCuo").call)
      assert_predicate doc, :present?
    end

    test "Playground component" do
      doc = Nokogiri::HTML.fragment(Core::Playground.new(src: "https://youtu.be/9P-ujzCuCuo").call)
      assert_predicate doc, :present?
    end
  end
end
