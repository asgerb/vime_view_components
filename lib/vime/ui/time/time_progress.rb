# frozen_string_literal: true

# @see https://vimejs.com/components/ui/time/time-progress

module Vime
  module Ui
    module Time
      class TimeProgress < Component
        option :always_show_hours, type: Types::Bool, optional: true
        option :separator, type: Types::String, optional: true

        def call
          content_tag "vm-time-progress", nil, process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            always_show_hours: always_show_hours,
            separator: separator,
          })
        end
      end
    end
  end
end
