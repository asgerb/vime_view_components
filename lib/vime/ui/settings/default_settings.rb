# frozen_string_literal: true

# @see https://vimejs.com/components/ui/settings/default-settings

module Vime
  module Ui
    module Settings
      class DefaultSettings < Component
        option :pin, type: Types::String.enum("bottomLeft", "bottomRight", "topLeft", "topRight"), default: -> { "bottomRight" }

        def call
          tag "vime-default-settings", process_attrs(dom_attrs)
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
