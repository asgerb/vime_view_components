# frozen_string_literal: true

# @see https://vimejs.com/components/ui/scrim

module Vime
  module Ui
    class Scrim < Component
      option :gradient, type: Types::String.enum("down", "up").optional, optional: true

      def call
        content_tag "vime-scrim", content, process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          gradient: gradient,
        })
      end
    end
  end
end
