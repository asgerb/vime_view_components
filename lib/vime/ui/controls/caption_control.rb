# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/caption-control

module Vime
  module Ui
    module Controls
      class CaptionControl < Component
        option :hide_icon, type: Types::String, default: -> { "#vime-captions-off" }
        option :hide_tooltip, type: Types::Bool, default: -> { false }
        option :keys, type: Types::String, default: -> { "c" }
        option :show_icon, type: Types::String, default: -> { "#vime-captions-on" }
        option :tooltip_direction, type: Types::TooltipDirection, optional: true
        option :tooltip_position, type: Types::TooltipPosition, default: -> { "top" }

        def call
          tag "vm-caption-control", process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            hide_icon: hide_icon,
            hide_tooltip: hide_tooltip,
            keys: keys,
            show_icon: show_icon,
            tooltip_direction: tooltip_direction,
            tooltip_position: tooltip_position,
          })
        end
      end
    end
  end
end
