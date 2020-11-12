# frozen_string_literal: true

# @see https://vimejs.com/components/ui/dbl-click-fullscreen

module Vime
  module Ui
    class DblClickFullscreen < Component
      option :use_on_mobile, type: Types::Bool, default: -> { false }

      def call
        tag "vime-dbl-click-fullscreen", dom_attrs
      end

      def dom_attrs
        super.merge({
          use_on_mobile: use_on_mobile,
        }).deep_transform_keys! { |key| key.to_s.dasherize }
      end
    end
  end
end
