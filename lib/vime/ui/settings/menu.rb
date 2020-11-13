# frozen_string_literal: true

# @see https://vimejs.com/components/ui/settings/menu

module Vime
  module Ui
    module Settings
      class Menu < Component
        option :active, type: Types::Bool, default: -> { false }
        option :controller, type: Types::String
        option :identifier, type: Types::String

        def call
          content_tag "vime-menu", content, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            active: active,
            controller: controller,
            identifier: identifier,
          })
        end
      end
    end
  end
end
