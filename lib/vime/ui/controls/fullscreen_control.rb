# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/fullscreen-control

module Vime
  module Ui
    module Controls
      class FullscreenControl < Component
        option :enter_icon, type: Types::String, optional: true
        option :exit_icon, type: Types::String, optional: true
        option :hide_tooltip, type: Types::Bool, optional: true
        option :keys, type: Types::String, optional: true, optional: true
        option :tooltip_direction, type: Types::TooltipDirection, optional: true
        option :tooltip_position, type: Types::TooltipPosition, optional: true

        def call
          content_tag "vm-fullscreen-control", nil, process_attrs(dom_attrs)
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
