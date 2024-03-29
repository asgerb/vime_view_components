# frozen_string_literal: true

# @see https://vimejs.com/components/ui/settings/default-settings

module Vime
  module Ui
    module Settings
      class DefaultSettings < Component
        option :pin, type: Types::String.enum("bottomLeft", "bottomRight", "topLeft", "topRight"), optional: true

        def call
          content_tag "vm-default-settings", nil, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            pin: pin,
          })
        end
      end
    end
  end
end
