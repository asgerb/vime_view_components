# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/pip-control

module Vime
  module Ui
    module Controls
      class PipControl < Component
        option :enter_icon, type: Types::String, default: -> { "#vime-enter-pip" }
        option :exit_icon, type: Types::String, default: -> { "#vime-exit-pip" }
        option :hide_tooltip, type: Types::Bool, default: -> { false }
        option :keys, type: Types::String, default: -> { "p" }
        option :tooltip_direction, type: Types::String.enum("left", "right"), optional: true
        option :tooltip_position, type: Types::String.enum("bottom", "top"), default: -> { "top" }

        def call
          tag "vime-pip-control", process_attrs(dom_attrs)
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
