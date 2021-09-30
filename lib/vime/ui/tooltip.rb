# frozen_string_literal: true

# @see https://vimejs.com/components/ui/tooltip

module Vime
  module Ui
    class Tooltip < Component
      option :active, type: Types::Bool, optional: true
      option :direction, type: Types::String.enum("left", "right"), optional: true
      option :hidden, type: Types::Bool, optional: true
      option :position, type: Types::String.enum("top", "bottom"), optional: true

      def call
        content_tag "vm-tooltip", content, process_attrs(dom_attrs)
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
