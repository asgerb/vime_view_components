# frozen_string_literal: true

# @see https://vimejs.com/components/ui/settings/settings

module Vime
  module Ui
    module Settings
      class Settings < Component
        option :active, type: Types::Bool, default: -> { false }
        option :controls_height, type: Types::Integer, default: -> { 0 }
        option :pin, type: Types::Pin, default: -> { "bottomRight" }

        def call
          content_tag "vime-settings", content, process_attrs(dom_attrs)
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
