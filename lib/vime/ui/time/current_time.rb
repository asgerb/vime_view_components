# frozen_string_literal: true

# @see https://vimejs.com/components/ui/time/current-time

module Vime
  module Ui
    module Time
      class CurrentTime < Component
        option :always_show_hours, type: Types::Bool, default: -> { false }

        def call
          tag "vime-current-time", process_attrs(dom_attrs)
        end

        def dom_attrs
          super.merge({
            always_show_hours: always_show_hours,
          })
        end
      end
    end
  end
end
