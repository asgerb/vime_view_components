# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/control-group

module Vime
  module Ui
    module Controls
      class ControlGroup < Component
        option :space, type: Types::String.enum("both", "bottom", "none", "top"), optional: true

        def call
          content_tag "vm-control-group", content, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            space: space,
          })
        end
      end
    end
  end
end
