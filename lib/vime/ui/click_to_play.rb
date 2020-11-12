# frozen_string_literal: true

# @see https://vimejs.com/components/ui/click-to-play

module Vime
  module Ui
    class ClickToPlay < Component
      option :use_on_mobile, type: Types::Bool, default: -> { false }

      def call
        tag "vime-click-to-play", dom_attrs
      end

      def dom_attrs
        super.merge({
          use_on_mobile: use_on_mobile,
        }).deep_transform_keys! { |key| key.to_s.dasherize }
      end
    end
  end
end
