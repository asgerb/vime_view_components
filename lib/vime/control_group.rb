# frozen_string_literal: true

# @see https://vimejs.com/components/ui/controls/control-group

module Vime
  class ControlGroup < Component
    option :space, type: Types::String.enum("both", "bottom", "none", "top"), default: -> { "none" }
  end
end
