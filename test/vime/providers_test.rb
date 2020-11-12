require "test_helper"

module Vime
  class ProvidersTest < ActiveSupport::TestCase
    test "render components" do
      [
        Providers::Audio,
        Providers::Hls,
        Providers::Video,
      ].each do |component_class|
        doc = Nokogiri::HTML::fragment(component_class.new.call)
        assert_predicate doc, :present?
      end
    end

    test "Vimeo component" do
      doc = Nokogiri::HTML::fragment(Providers::Vimeo.new(video_id: "12345").call)
      assert_predicate doc, :present?
    end
  end
end
