# frozen_string_literal: true

# @see https://vimejs.com/components/providers/video

module Vime
  module Providers
    class Video < Component
      option :controls_list, type: Types::String.optional, optional: true
      option :cross_origin, type: Types::Bool, optional: true
      option :media_title, type: Types::String, optional: true
      option :poster, type: Types::String, optional: true
      option :preload, type: Types::String.enum("", "auto", "metadata", "none").optional, default: -> { "metadata" }

      def call
        content_tag "vime-video", content, process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          controls_list: controls_list,
          cross_origin: cross_origin,
          media_title: media_title,
          poster: poster,
          preload: preload,
        })
      end
    end
  end
end
