# frozen_string_literal: true

# @see https://vimejs.com/components/providers/audio

module Vime
  module Providers
    class Audio < Component
      option :cross_origin, type: Types::CrossOrigin, optional: true
      option :media_title, type: Types::String, optional: true
      option :preload, type: Types::Preload, default: -> { "metadata" }

      def call
        content_tag "vm-audio", content, process_attrs(dom_attrs)
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
