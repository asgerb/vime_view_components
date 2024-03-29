# frozen_string_literal: true

# @see https://vimejs.com/components/ui/poster

module Vime
  module Ui
    class Poster < Component
      option :fit, type: Types::String.enum("contain", "cover", "fill", "none", "scale-down"), optional: true

      def call
        content_tag "vm-poster", nil, process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          fit: fit
        })
      end
    end
  end
end
