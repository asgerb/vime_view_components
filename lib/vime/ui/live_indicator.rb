# frozen_string_literal: true

# @see https://vimejs.com/components/ui/live-indicator

module Vime
  module Ui
    class LiveIndicator < Component
      def call
        tag "vime-live-indicator", dom_attrs
      end

      def dom_attrs
        super.merge({
        }).deep_transform_keys! { |key| key.to_s.dasherize }
      end
    end
  end
end
