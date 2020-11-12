require "test_helper"

module Vime
  class ProvidersTest < ActiveSupport::TestCase
    test "Audio component" do
      doc = Nokogiri::HTML::fragment(Providers::Audio.new.call)
      assert_predicate doc, :present?
    end

    test "Video component" do
      doc = Nokogiri::HTML::fragment(Providers::Video.new.call)
      assert_predicate doc, :present?
    end

    test "Vimeo component" do
      doc = Nokogiri::HTML::fragment(Providers::Video.new(video_id: "12345").call)
      assert_predicate doc, :present?
    end
  end
end
