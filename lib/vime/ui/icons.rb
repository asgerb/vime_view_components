# frozen_string_literal: true

# @see https://vimejs.com/components/ui/icons

module Vime
  module Ui
    class Icons < Component
      option :href, type: Types::String, optional: true

      def call
        tag "vime-icons", process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          href: href,
        })
      end
    end
  end
end
