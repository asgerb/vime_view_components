# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/volume-control

module Vime
  module Ui
    module Controls
      class VolumeControl < Component
        option :hide_tooltip, type: Types::Bool, optional: true
        option :high_volume_icon, type: Types::String, optional: true
        option :low_volume_icon, type: Types::String, optional: true
        option :mute_keys, type: Types::String, optional: true
        option :muted_icon, type: Types::String, optional: true
        option :no_keyboard, type: Types::Bool, optional: true
        option :tooltip_direction, type: Types::TooltipDirection, optional: true
        option :tooltip_position, type: Types::TooltipPosition, optional: true

        def call
          content_tag "vm-volume-control", nil, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            hide_tooltip: hide_tooltip,
            high_volume_icon: high_volume_icon,
            low_volume_icon: low_volume_icon,
            mute_keys: mute_keys,
            muted_icon: muted_icon,
            no_keyboard: no_keyboard,
            tooltip_direction: tooltip_direction,
            tooltip_position: tooltip_position,
          })
        end
      end
    end
  end
end
