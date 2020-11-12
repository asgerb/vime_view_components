# frozen_string_literal: true

# @see https://vimejs.com/components/ui/skeleton

module Vime
  module Ui
    class Skeleton < Component
      option :effect, type: Types::String.enum("none", "sheen"), default: -> { "sheen" }

      def call
        tag "vime-skeleton", dom_attrs
      end

      def dom_attrs
        super.merge({
          effect: effect
        }).deep_transform_keys! { |key| key.to_s.dasherize }
      end
    end
  end
end
