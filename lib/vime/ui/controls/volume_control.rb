# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/volume-control

module Vime
  module Ui
    module Controls
      class VolumeControl < Component
        option :hide_tooltip, type: Types::Bool, default: -> { false }
        option :high_volume_icon, type: Types::String, default: -> { "#vime-volume-high" }
        option :low_volume_icon, type: Types::String, default: -> { "#vime-volume-low" }
        option :mute_keys, type: Types::String, default: -> { "m" }
        option :muted_icon, type: Types::String, default: -> { "#vime-volume-mute" }
        option :no_keyboard, type: Types::Bool, default: -> { false }
        option :tooltip_direction, type: Types::String.enum("left", "right"), optional: true
        option :tooltip_position, type: Types::String.enum("bottom", "top"), default: -> { "top" }

        def call
          tag "vime-volume-control", dom_attrs
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
          }).deep_transform_keys! { |key| key.to_s.dasherize }
        end
      end
    end
  end
end
