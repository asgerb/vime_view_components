# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/mute-control

module Vime
  module Ui
    module Controls
      class MuteControl < Component
        option :hide_tooltip, type: Types::Bool, default: -> { false }
        option :high_volume_icon, type: Types::String, default: -> { "#vime-volume-high" }
        option :keys, type: Types::String.optional, default: -> { "m" }
        option :low_volume_icon, type: Types::String, default: -> { "#vime-volume-low" }
        option :muted_icon, type: Types::String, default: -> { "#vime-volume-mute" }
        option :tooltip_direction, type: Types::String.enum("left", "right"), optional: true
        option :tooltip_position, type: Types::String.enum("bottom", "top"), default: -> { "top" }

        def call
          tag "vime-mute-control", dom_attrs
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
          }).deep_transform_keys! { |key| key.to_s.dasherize }
        end
      end
    end
  end
end
