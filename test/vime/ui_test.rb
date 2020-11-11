require "test_helper"

module Vime
  class UiTest < ActiveSupport::TestCase
    test "render components" do
      [
        Ui::DefaultUi,
        Ui::Scrim
      ].each do |component_class|
        doc = Nokogiri::HTML::fragment(component_class.new.call)
        assert_predicate doc, :present?
      end
    end
  end
end
