# frozen_string_literal: true
module Vime
  class PlaybackControl < Component
    option :hide_tooltip, optional: true
    option :keys, optional: true
    option :play_icon, optional: true
    option :pause_icon, optional: true
    option :tooltip_direction, optional: true
    option :tooltip_position, optional: true

    def call
      tag "vime-playback-control", dom_attrs
    end

    def dom_attrs
      {
        hide_tooltip: hide_tooltip,
        keys: keys,
        pause_icon: pause_icon,
        play_icon: play_icon,
        tooltip_direction: tooltip_direction,
        tooltip_position: tooltip_position,
      }.deep_transform_keys! { |key| key.to_s.dasherize }
    end
  end
end
