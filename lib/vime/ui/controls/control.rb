# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/control

module Vime
  module Ui
    module Controls
      class Control < Component
        option :expanded, type: Types::Bool, optional: true
        option :hidden, type: Types::Bool, optional: true
        option :identifier, type: Types::String, optional: true
        option :keys, type: Types::String, optional: true
        option :label, type: Types::String
        option :menu, type: Types::String, optional: true
        option :pressed, type: Types::Bool, optional: true

        def call
          content_tag "vm-control", content, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            expanded: expanded,
            hidden: hidden,
            identifier: identifier,
            keys: keys,
            label: label,
            menu: menu,
            pressed: pressed,
          })
        end
      end
    end
  end
end
