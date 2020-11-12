# frozen_string_literal: true

# @see https://vimejs.com/components/ui/ui

module Vime
  module Ui
    class Ui < Component
      def call
        content_tag "vime-ui", content, dom_attrs
      end

      def dom_attrs
        super.merge({
        }).deep_transform_keys! { |key| key.to_s.dasherize }
      end
    end
  end
end
