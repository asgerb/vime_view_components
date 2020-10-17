# frozen_string_literal: true
module Vime
  class Controls < Component
    option :active_duration, optional: true
    option :align, optional: true
    option :direction, optional: true
    option :full_height, optional: true
    option :full_width, optional: true
    option :hidden, optional: true
    option :hide_on_mouse_leave, optional: true
    option :hide_when_paused, optional: true
    option :justify, optional: true
    option :pin, optional: true
    option :wait_for_playback_start, optional: true

    def call
      content_tag "vime-controls", content, dom_attrs
    end

    def dom_attrs
      super.merge({
        active_duration: active_duration,
        align: align,
        direction: direction,
        full_height: full_height,
        full_width: full_width,
        hidden: hidden,
        hide_on_mouse_leave: hide_on_mouse_leave,
        hide_when_paused: hide_when_paused,
        justify: justify,
        pin: pin,
        wait_for_playback_start: wait_for_playback_start
      }).deep_transform_keys! { |key| key.to_s.dasherize }
    end
  end
end
