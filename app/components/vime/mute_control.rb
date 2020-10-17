module Vime
  class MuteControl < Component
    option :hide_tooltip, optional: true
    option :keys, optional: true
    option :high_volume_icon, optional: true
    option :low_volume_icon, optional: true
    option :muted_icon, optional: true
    option :tooltip_direction, optional: true
    option :tooltip_position, optional: true
  end
end
