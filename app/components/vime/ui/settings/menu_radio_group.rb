# frozen_string_literal: true

# @see https://vimejs.com/components/ui/settings/menu-radio-group

module Vime
  module Ui
    module Settings
      class MenuRadioGroup < Component
        option :value, type: Types::String, optional: true

        def call
          content_tag "vm-menu-radio-group", content, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            value: value,
          })
        end
      end
    end
  end
end
