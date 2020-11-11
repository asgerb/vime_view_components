# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/mute-control

module Vime
  class MuteControl < Component
    option :hide_tooltip, type: Types::Bool, default: -> { false }
    option :high_volume_icon, type: Types::String, default: -> { "#vime-volume-high" }
    option :keys, type: Types::String.optional, default: -> { "m" }
    option :low_volume_icon, type: Types::String, default: -> { "#vime-volume-low" }
    option :muted_icon, type: Types::String, default: -> { "#vime-volume-mute" }
    option :tooltip_direction, type: Types::String.enum("left", "right"), optional: true
    option :tooltip_position, type: Types::String.enum("bottom", "top"), default: -> { "top" }
  end
end
