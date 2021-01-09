# frozen_string_literal: true

# @see https://vimejs.com/components/ui/spinner

module Vime
  module Ui
    class Spinner < Component
      def call
        content_tag "vm-spinner", nil, process_attrs(dom_attrs)
      end
    end
  end
end
