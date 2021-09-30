# frozen_string_literal: true

# @see https://vimejs.com/components/providers/youtube

module Vime
  module Providers
    class Youtube < Core::Embed
      option :cookies, type: Types::Bool, optional: true
      option :poster, type: Types::String, optional: true
      option :show_fullscreen_control, type: Types::Bool, optional: true
      option :video_id, type: Types::String

      def call
        content_tag "vm-youtube", nil, process_attrs(dom_attrs)
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
