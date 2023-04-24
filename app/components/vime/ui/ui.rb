# frozen_string_literal: true

# @see https://vimejs.com/components/ui/ui

module Vime
  module Ui
    class Ui < Component
      def call
        content_tag "vm-ui", content, process_attrs(dom_attrs)
      end
    end
  end
end
