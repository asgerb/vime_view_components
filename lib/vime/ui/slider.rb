# frozen_string_literal: true

# @see https://vimejs.com/components/ui/slider

module Vime
  module Ui
    class Slider < Component
      option :label, type: Types::String, optional: true
      option :max, type: Types::Integer, default: -> { 10 }
      option :min, type: Types::Integer, default: -> { 0 }
      option :step, type: Types::Integer, default: -> { 1 }
      option :value, type: Types::Integer, default: -> { 5 }
      option :value_text, type: Types::String, optional: true

      def call
        tag "vm-slider", process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          label: label,
          max: max,
          min: min,
          step: step,
          value: value,
          value_text: value_text,
        })
      end
    end
  end
end
