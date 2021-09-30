# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/scrubber-control

module Vime
  module Ui
    module Controls
      class ScrubberControl < Component
        option :always_show_hours, type: Types::Bool, optional: true
        option :hide_tooltip, type: Types::Bool, optional: true
        option :no_keyboard, type: Types::Bool, optional: true

        def call
          content_tag "vm-scrubber-control", nil, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            always_show_hours: always_show_hours,
            hide_tooltip: hide_tooltip,
            no_keyboard: no_keyboard,
          })
        end
      end
    end
  end
end
