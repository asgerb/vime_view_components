# frozen_string_literal: true

# @see https://vimejs.com/components/ui/icons

module Vime
  module Ui
    class Icons < Component
      option :href, type: Types::String, optional: true

      def call
        tag "vime-icons", dom_attrs
      end

      def dom_attrs
        super.merge({
          href: href,
        }).deep_transform_keys! { |key| key.to_s.dasherize }
      end
    end
  end
end
