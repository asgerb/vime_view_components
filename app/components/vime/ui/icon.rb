# frozen_string_literal: true

# @see https://vimejs.com/components/ui/icon

module Vime
  module Ui
    class Icon < Component
      option :src, type: Types::String, optional: true

      def call
        content_tag "vm-icon", content, process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          src: src,
        })
      end
    end
  end
end
