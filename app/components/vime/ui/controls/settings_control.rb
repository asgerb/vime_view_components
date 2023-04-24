# frozen_string_literal: true

# @eee https://vimejs.com/components/ui/controls/settings-control

module Vime
  module Ui
    module Controls
      class SettingsControl < Component
        option :expanded, type: Types::Bool, optional: true
        option :icon, type: Types::String, optional: true
        option :menu, type: Types::String, optional: true
        option :tooltip_direction, type: Types::TooltipDirection, optional: true
        option :tooltip_position, type: Types::TooltipPosition, optional: true

        def call
          content_tag "vm-settings-control", nil, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            expanded: expanded,
            icon: icon,
            menu: menu,
            tooltip_direction: tooltip_direction,
            tooltip_position: tooltip_position,
          })
        end
      end
    end
  end
end
