# frozen_string_literal: true

# @see https://vimejs.com/components/ui/spinner

module Vime
  module Ui
    class Spinner < Component
      def call
        tag "vime-spinner", dom_attrs
      end

      def dom_attrs
        super.merge({
        }).deep_transform_keys! { |key| key.to_s.dasherize }
      end
    end
  end
end
