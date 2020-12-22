# frozen_string_literal: true

# @see https://vimejs.com/components/providers/youtube

module Vime
  module Providers
    class Youtube < Component
      option :cookies, type: Types::Bool, default: -> { false }
      option :poster, type: Types::String, optional: true
      option :show_fullscreen_control, type: Types::Bool, default: -> { true }
      option :video_id, type: Types::String

      def call
        tag "vm-youtube", process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          cookies: cookies,
          poster: poster,
          show_fullscreen_control: show_fullscreen_control,
          video_id: video_id,
        })
      end
    end
  end
end
