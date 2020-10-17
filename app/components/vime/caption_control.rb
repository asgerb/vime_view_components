# frozen_string_literal: true
module Vime
  class CaptionControl < Component
    option :hide_icon, optional: true
    option :hide_tooltip, default: -> { false }
    option :keys, default: -> { "c" }
    option :show_icon, optional: true
    option :tooltip_direction, optional: true
    option :tooltip_position, default: -> { "top" }
  end
end
