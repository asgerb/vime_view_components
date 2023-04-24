# frozen_string_literal: true

# @see https://vimejs.com/components/ui/captions

module Vime
  module Ui
    class Captions < Component
      option :hidden, type: Types::Bool, optional: true

      def call
        content_tag "vm-captions", nil, process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          hidden: hidden,
        })
      end
    end
  end
end
