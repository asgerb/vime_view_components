# frozen_string_literal: true

# @see https://vimejs.com/components/ui/slider

module Vime
  module Ui
    class Slider < Component
      option :label, type: Types::String, optional: true
      option :max, type: Types::Integer, optional: true
      option :min, type: Types::Integer, optional: true
      option :step, type: Types::Integer, optional: true
      option :value, type: Types::Integer, optional: true
      option :value_text, type: Types::String, optional: true

      def call
        content_tag "vm-slider", nil, process_attrs(dom_attrs)
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
