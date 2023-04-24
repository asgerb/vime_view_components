# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/controls

module Vime
  module Ui
    module Controls
      class Controls < Component
        option :active_duration, type: Types::Integer, optional: true
        option :align, type: Types::String.enum("center", "end", "start"), optional: true
        option :direction, type: Types::String.enum("column", "row"), optional: true
        option :full_height, type: Types::Bool, optional: true
        option :full_width, type: Types::Bool, optional: true
        option :hidden, type: Types::Bool, optional: true
        option :hide_on_mouse_leave, type: Types::Bool, optional: true
        option :hide_when_paused, type: Types::Bool, optional: true
        option :justify, type: Types::String.enum("center", "end", "space-around", "space-between", "space-evenly", "start"), optional: true
        option :pin, type: Types::String.enum("bottomLeft", "bottomRight", "center", "topLeft", "topRight"), optional: true
        option :wait_for_playback_start, type: Types::Bool, optional: true

        def call
          content_tag "vm-controls", content, process_attrs(dom_attrs)
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
          })
        end
      end
    end
  end
end
