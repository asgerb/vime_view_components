# frozen_string_literal: true

# @see https://vimejs.com/components/ui/click-to-play

module Vime
  module Ui
    class ClickToPlay < Component
      option :use_on_mobile, type: Types::Bool, default: -> { false }

      def call
        tag "vm-click-to-play", process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          use_on_mobile: use_on_mobile,
        })
      end
    end
  end
end
