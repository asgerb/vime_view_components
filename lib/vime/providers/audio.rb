# frozen_string_literal: true

# @see https://vimejs.com/components/providers/video

module Vime
  module Providers
    class Audio < Component
      option :cross_origin, type: Types::String.enum("", "anonymous", "use-credentials"), optional: true
      option :media_title, type: Types::String, optional: true
      option :preload, type: Types::String.enum("", "auto", "metadata", "none"), default: -> { "metadata" }

      def call
        content_tag "vime-audio", content, dom_attrs
      end

      def dom_attrs
        {
          cross_origin: cross_origin,
          media_title: media_title,
          preload: preload,
        }.deep_transform_keys! { |key| key.to_s.dasherize }
      end
    end
  end
end
