# frozen_string_literal: true

# @see https://vimejs.com/components/ui/settings/submenu

module Vime
  module Ui
    module Settings
      class Submenu < Component
        option :active, type: Types::Bool, default: -> { false }
        option :hidden, type: Types::Bool, default: -> { false }
        option :hint, type: Types::String, optional: true
        option :label, type: Types::String

        def call
          content_tag "vm-submenu", content, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            active: active,
            hidden: hidden,
            hint: hint,
            label: label,
          })
        end
      end
    end
  end
end
