# frozen_string_literal: true

# @see https://vimejs.com/components/ui/dbl-click-fullscreen

module Vime
  module Ui
    class DblClickFullscreen < Component
      option :use_on_mobile, type: Types::Bool, default: -> { false }

      def call
        content_tag "vm-dbl-click-fullscreen", process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          use_on_mobile: use_on_mobile,
        })
      end
    end
  end
end
