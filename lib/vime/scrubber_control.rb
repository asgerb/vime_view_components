# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/scrubber-control

module Vime
  class ScrubberControl < Component
    option :always_show_hours, type: Types::Bool, default: -> { false }
    option :hide_tooltip, type: Types::Bool, default: -> { false }
    option :no_keyboard, type: Types::Bool, default: -> { false }

    def call
      tag "vime-scrubber-control", dom_attrs
    end

    def dom_attrs
      {
        always_show_hours: always_show_hours,
        hide_tooltip: hide_tooltip,
        no_keyboard: no_keyboard,
      }.deep_transform_keys! { |key| key.to_s.dasherize }
    end
  end
end
