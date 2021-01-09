# frozen_string_literal: true

# @see https://vimejs.com/components/ui/settings/menu-item

module Vime
  module Ui
    module Settings
      class MenuItem < Component
        option :badge, type: Types::String, optional: true
        option :checked, type: Types::Bool, optional: true
        option :checked_icon, type: Types::String, default: -> { "#vime-checkmark" }
        option :expanded, type: Types::Bool, optional: true
        option :hidden, type: Types::Bool, default: -> { false }
        option :hint, type: Types::String, optional: true
        option :identifier, type: Types::String, optional: true
        option :label, type: Types::String
        option :menu, type: Types::String, optional: true

        def call
          content_tag "vm-menu-item", nil, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            badge: badge,
            checked: checked,
            checked_icon: checked_icon,
            expanded: expanded,
            hidden: hidden,
            hint: hint,
            identifier: identifier,
            label: label,
            menu: menu,
          })
        end
      end
    end
  end
end
