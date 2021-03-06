# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/playback-control

module Vime
  module Ui
    module Controls
      class PlaybackControl < Component
        option :hide_tooltip, type: Types::Bool, default: -> { false }
        option :keys, type: Types::String.optional, default: -> { "k" }
        option :play_icon, type: Types::String, default: -> { "play" }
        option :pause_icon, type: Types::String, default: -> { "pause" }
        option :tooltip_direction, type: Types::TooltipDirection, optional: true
        option :tooltip_position, type: Types::TooltipPosition, default: -> { "top" }

        def call
          content_tag "vm-playback-control", nil, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            hide_tooltip: hide_tooltip,
            keys: keys,
            pause_icon: pause_icon,
            play_icon: play_icon,
            tooltip_direction: tooltip_direction,
            tooltip_position: tooltip_position,
          })
        end
      end
    end
  end
end
