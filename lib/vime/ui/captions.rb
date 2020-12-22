# frozen_string_literal: true

# @see https://vimejs.com/components/ui/captions

module Vime
  module Ui
    class Captions < Component
      option :controls_height, type: Types::Integer, default: -> { 0 }
      option :hidden, type: Types::Bool, default: -> { false }

      def call
        tag "vm-captions", process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          controls_height: controls_height,
          hidden: hidden,
        })
      end
    end
  end
end
