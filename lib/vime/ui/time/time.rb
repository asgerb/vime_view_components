# frozen_string_literal: true

# @see https://vimejs.com/components/ui/time/time

module Vime
  module Ui
    module Time
      class Time < Component
        option :always_show_hours, type: Types::Bool, default: -> { false }
        option :label, type: Types::String
        option :seconds, type: Types::Integer, default: -> { 0 }

        def call
          tag "vm-time", process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            always_show_hours: always_show_hours,
            label: label,
            seconds: seconds,
          })
        end
      end
    end
  end
end
