# frozen_string_literal: true

# @see https://vimejs.com/components/ui/icon-library

module Vime
  module Ui
    class IconLibrary < Component
      option :name, type: Types::String, optional: true

      def call
        tag "vm-icons", process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          name: name,
        })
      end
    end
  end
end