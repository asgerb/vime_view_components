# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/control-spacer

module Vime
  module Ui
    module Controls
      class ControlSpacer < Component
        def call
          content_tag "vm-control-spacer", nil, process_attrs(dom_attrs)
        end
      end
    end
  end
end
