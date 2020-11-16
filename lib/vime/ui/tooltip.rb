# frozen_string_literal: true

# @see https://vimejs.com/components/ui/tooltip

module Vime
  module Ui
    class Tooltip < Component
      option :active, type: Types::Bool, default: -> { false }
      option :direction, type: Types::String.enum("left", "right"), optional: true
      option :hidden, type: Types::Bool, default: -> { false }
      option :position, type: Types::String.enum("top", "bottom"), default: -> { "top" }

      def call
        content_tag "vime-tooltip", content, process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          active: active,
          direction: direction,
          hidden: hidden,
          position: position,
        })
      end
    end
  end
end
