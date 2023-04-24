# frozen_string_literal: true

# @see https://vimejs.com/components/ui/skeleton

module Vime
  module Ui
    class Skeleton < Component
      option :effect, type: Types::String.enum("none", "sheen"), optional: true

      def call
        content_tag "vm-skeleton", nil, process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          effect: effect
        })
      end
    end
  end
end
