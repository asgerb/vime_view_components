# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/mute-control

module Vime
  module Ui
    module Controls
      class MuteControl < Component
        option :hide_tooltip, type: Types::Bool, optional: true
        option :high_volume_icon, type: Types::String, optional: true
        option :keys, type: Types::String.optional, optional: true
        option :low_volume_icon, type: Types::String, optional: true
        option :muted_icon, type: Types::String, optional: true
        option :tooltip_direction, type: Types::TooltipDirection, optional: true
        option :tooltip_position, type: Types::TooltipPosition, optional: true

        def call
          content_tag "vm-mute-control", nil, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            hide_tooltip: hide_tooltip,
            high_volume_icon: high_volume_icon,
            keys: keys,
            low_volume_icon: low_volume_icon,
            muted_icon: muted_icon,
            tooltip_direction: tooltip_direction,
            tooltip_position: tooltip_position,
          })
        end
      end
    end
  end
end
