# frozen_string_literal: true

# @eee https://vimejs.com/components/ui/controls/settings-control

module Vime
  module Ui
    module Controls
      class SettingsControl < Component
        option :expanded, type: Types::Bool, default: -> { false }
        option :icon, type: Types::String, default: -> { "#vime-settings" }
        option :menu, type: Types::String, optional: true
        option :tooltip_direction, type: Types::String.enum("left", "right"), optional: true
        option :tooltip_position, type: Types::String.enum("bottom", "top"), default: -> { "top" }

        def call
          tag "vime-settings-control", dom_attrs
        end

        def dom_attrs
          {
            expanded: expanded,
            icon: icon,
            menu: menu,
            tooltip_direction: tooltip_direction,
            tooltip_position: tooltip_position,
          }.deep_transform_keys! { |key| key.to_s.dasherize }
        end
      end
    end
  end
end
