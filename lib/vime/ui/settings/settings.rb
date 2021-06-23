# frozen_string_literal: true

# @see https://vimejs.com/components/ui/settings/settings

module Vime
  module Ui
    module Settings
      class Settings < Component
        option :active, type: Types::Bool, optional: true
        option :controls_height, type: Types::Integer, optional: true
        option :pin, type: Types::String.enum("bottomLeft", "bottomRight", "topLeft", "topRight"), optional: true

        def call
          content_tag "vm-settings", content, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            active: active,
            controls_height: controls_height,
            pin: pin,
          })
        end
      end
    end
  end
end
