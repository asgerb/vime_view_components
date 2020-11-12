# frozen_string_literal: true

# @see https://vimejs.com/components/ui/icon

module Vime
  module Ui
    class Icon < Component
      option :href, type: Types::String, optional: true

      def call
        content_tag "vime-icon", content, dom_attrs
      end

      def dom_attrs
        super.merge({
          href: href,
        }).deep_transform_keys! { |key| key.to_s.dasherize }
      end
    end
  end
end
