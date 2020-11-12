# frozen_string_literal: true

# @see https://vimejs.com/components/providers/audio

module Vime
  module Providers
    class Audio < Component
      option :cross_origin, type: Types::String.enum("", "anonymous", "use-credentials"), optional: true
      option :media_title, type: Types::String, optional: true
      option :preload, type: Types::String.enum("", "auto", "metadata", "none"), default: -> { "metadata" }

      def call
        content_tag "vime-audio", content, process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          cross_origin: cross_origin,
          media_title: media_title,
          preload: preload,
        })
      end
    end
  end
end
