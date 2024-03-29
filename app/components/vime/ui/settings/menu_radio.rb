# frozen_string_literal: true

# @see https://vimejs.com/components/ui/settings/menu-radio

module Vime
  module Ui
    module Settings
      class MenuRadio < Component
        option :badge, type: Types::String, optional: true
        option :checked, type: Types::Bool, optional: true
        option :checked_icon, type: Types::String, optional: true
        option :label, type: Types::String
        option :value, type: Types::String

        def call
          content_tag "vm-menu-radio", nil, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            badge: badge,
            checked: checked,
            checked_icon: checked_icon,
            label: label,
            value: value,
          })
        end
      end
    end
  end
end
