# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/caption-control

module Vime
  module Ui
    module Controls
      class CaptionControl < Component
        option :hide_icon, type: Types::String, optional: true
        option :hide_tooltip, type: Types::Bool, optional: true
        option :keys, type: Types::String, optional: true
        option :show_icon, type: Types::String, optional: true
        option :tooltip_direction, type: Types::TooltipDirection, optional: true
        option :tooltip_position, type: Types::TooltipPosition, optional: true

        def call
          content_tag "vm-caption-control", nil, process_attrs(dom_attrs)
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
