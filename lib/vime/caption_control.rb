# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/caption-control

module Vime
  class CaptionControl < Component
    option :hide_icon, type: Types::String, default: -> { "#vime-captions-off" }
    option :hide_tooltip, type: Types::Bool, default: -> { false }
    option :keys, type: Types::String, default: -> { "c" }
    option :show_icon, type: Types::String, default: -> { "#vime-captions-on" }
    option :tooltip_direction, type: Types::String.enum("left", "right"), optional: true
    option :tooltip_position, type: Types::String.enum("bottom", "top"), default: -> { "top" }
  end
end
