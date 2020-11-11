# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/fullscreen-control

module Vime
  class FullscreenControl < Component
    option :enter_icon, type: Types::String, default: -> { "#vime-enter-fullscreen" }
    option :exit_icon, type: Types::String, default: -> { "#vime-exit-fullscreen" }
    option :hide_tooltip, type: Types::Bool, default: -> { false }
    option :keys, type: Types::String, optional: true, default: -> { "f" }
    option :tooltip_direction, type: Types::String.enum("left", "right"), optional: true
    option :tooltip_position, type: Types::String.enum("bottom", "top"), default: -> { "top" }
  end
end
