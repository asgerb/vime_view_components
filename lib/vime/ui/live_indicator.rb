# frozen_string_literal: true

# @see https://vimejs.com/components/ui/live-indicator

module Vime
  module Ui
    class LiveIndicator < Component
      def call
        tag "vime-live-indicator", process_attrs(dom_attrs)
      end
    end
  end
end
