# frozen_string_literal: true

# @see https://vimejs.com/components/ui/scrim

module Vime
  module Ui
    class Scrim < Component
      option :gradient, type: Types::String.enum("down", "up").optional, optional: true

      def call
        content_tag "vime-scrim", content, dom_attrs
      end

      def dom_attrs
        super.merge({
          gradient: gradient,
        }).deep_transform_keys! { |key| key.to_s.dasherize }
      end
    end
  end
end
