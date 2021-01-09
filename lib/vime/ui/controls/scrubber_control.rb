# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/scrubber-control

module Vime
  module Ui
    module Controls
      class ScrubberControl < Component
        option :always_show_hours, type: Types::Bool, default: -> { false }
        option :hide_tooltip, type: Types::Bool, default: -> { false }
        option :no_keyboard, type: Types::Bool, default: -> { false }

        def call
          content_tag "vm-scrubber-control", process_attrs(dom_attrs)
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
