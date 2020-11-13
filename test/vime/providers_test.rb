# frozen_string_literal: true

require "test_helper"

module Vime
  class ProvidersTest < ActiveSupport::TestCase
    test "render components" do
      [
        Providers::Audio,
        Providers::Hls,
        Providers::Video,
      ].each do |component_class|
        doc = Nokogiri::HTML.fragment(component_class.new.call)
        assert_predicate doc, :present?
      end
    end

    test "Dailymotion component" do
      doc = Nokogiri::HTML.fragment(Providers::Dailymotion.new(video_id: "12345").call)
      assert_predicate doc, :present?
    end

    test "Vimeo component" do
      doc = Nokogiri::HTML.fragment(Providers::Vimeo.new(video_id: "12345").call)
      assert_predicate doc, :present?
    end

    test "Youtube component" do
      doc = Nokogiri::HTML.fragment(Providers::Youtube.new(video_id: "12345").call)
      assert_predicate doc, :present?
    end
  end
end
