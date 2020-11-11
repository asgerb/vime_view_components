require "test_helper"

module Vime
  class CoreTest < ActiveSupport::TestCase
    test "render components" do
      [
        Core::Player,
      ].each do |component_class|
        doc = Nokogiri::HTML::fragment(component_class.new.call)
        assert_predicate doc, :present?
      end
    end
  end
end
