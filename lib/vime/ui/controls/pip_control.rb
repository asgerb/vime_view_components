# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/pip-control

module Vime
  module Ui
    module Controls
      class PipControl < Component
        option :enter_icon, type: Types::String, default: -> { "pip-enter" }
        option :exit_icon, type: Types::String, default: -> { "pip-exit" }
        option :hide_tooltip, type: Types::Bool, default: -> { false }
        option :keys, type: Types::String, default: -> { "p" }
        option :tooltip_direction, type: Types::TooltipDirection, optional: true
        option :tooltip_position, type: Types::TooltipPosition, default: -> { "top" }

        def call
          content_tag "vm-pip-control", nil, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            enter_icon: enter_icon,
            exit_icon: exit_icon,
            hide_tooltip: hide_tooltip,
            keys: keys,
            tooltip_direction: tooltip_direction,
            tooltip_position: tooltip_position,
          })
        end
      end
    end
  end
end
