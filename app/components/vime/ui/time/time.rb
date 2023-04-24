# frozen_string_literal: true

# @see https://vimejs.com/components/ui/time/time

module Vime
  module Ui
    module Time
      class Time < Component
        option :always_show_hours, type: Types::Bool, optional: true
        option :label, type: Types::String
        option :seconds, type: Types::Integer, optional: true

        def call
          content_tag "vm-time", nil, process_attrs(dom_attrs)
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
