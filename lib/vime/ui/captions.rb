# frozen_string_literal: true

# @see https://vimejs.com/components/ui/captions

module Vime
  module Ui
    class Captions < Component
      option :controls_height, type: Types::Integer, default: -> { 0 }
      option :hidden, type: Types::Bool, default: -> { false }

      def call
        tag "vime-captions", dom_attrs
      end

      def dom_attrs
        super.merge({
          controls_height: controls_height,
          hidden: hidden,
        }).deep_transform_keys! { |key| key.to_s.dasherize }
      end
    end
  end
end
