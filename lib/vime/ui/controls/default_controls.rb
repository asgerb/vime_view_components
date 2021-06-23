# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/default-controls

module Vime
  module Ui
    module Controls
      class DefaultControls < Component
        option :active_duration, type: Types::Integer, optional: true
        option :hide_on_mouse_leave, type: Types::Bool, optional: true
        option :hide_when_paused, type: Types::Bool, optional: true
        option :wait_for_playback_start, type: Types::Bool, optional: true

        def call
          content_tag "vm-default-controls", nil, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            active_duration: active_duration,
            hide_on_mouse_leave: hide_on_mouse_leave,
            hide_when_paused: hide_when_paused,
            wait_for_playback_start: wait_for_playback_start
          })
        end
      end
    end
  end
end
