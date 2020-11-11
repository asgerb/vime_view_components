# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/control-group

module Vime
  module Ui
    module Controls
      class ControlGroup < Component
        option :space, type: Types::String.enum("both", "bottom", "none", "top"), default: -> { "none" }

        def call
          content_tag "vime-control-group", content, dom_attrs
        end

        def dom_attrs
          super.merge({
            space: space,
          }).deep_transform_keys! { |key| key.to_s.dasherize }
        end
      end
    end
  end
end
