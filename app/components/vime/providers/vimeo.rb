# frozen_string_literal: true

# @see https://vimejs.com/components/providers/vimeo

module Vime
  module Providers
    class Vimeo < Vime::Core::Embed
      option :byline, type: Types::Bool, optional: true
      option :color, type: Types::String, optional: true
      option :no_auto_aspect_ratio, type: Types::Bool, optional: true
      option :portrait, type: Types::Bool, optional: true
      option :poster, type: Types::String, optional: true
      option :video_id, type: Types::String

      def call
        content_tag "vm-vimeo", nil, process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          byline: byline,
          color: color,
          no_auto_aspect_ratio: no_auto_aspect_ratio,
          portrait: portrait,
          poster: poster,
          video_id: video_id,
        })
      end
    end
  end
end
