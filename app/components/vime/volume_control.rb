# frozen_string_literal: true
module Vime
  class VolumeControl < Component
    option :hide_tooltip, optional: true
    option :mute_keys, optional: true
    option :no_keyboard, optional: true
    option :high_volume_icon, optional: true
    option :low_volume_icon, optional: true
    option :muted_icon, optional: true
    option :tooltip_direction, optional: true
    option :tooltip_position, optional: true
  end
end
