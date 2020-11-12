# frozen_string_literal: true

# @see https://vimejs.com/components/providers/hls

module Vime
  module Providers
    class Hls < Component
      option :config, type: Types::Any, optional: true
      option :controls_list, type: Types::String, optional: true
      option :cross_origin, type: Types::String.enum("", "anonymous", "use-credentials"), optional: true
      option :media_title, type: Types::String, optional: true
      option :poster, type: Types::String, optional: true
      option :preload, type: Types::String.enum("", "auto", "metadata", "none"), default: -> { "metadata" }
      option :version, type: Types::String, default: -> { "latest" }

      def call
        content_tag "vime-hls", content, process_attrs(dom_attrs)
      end

      def dom_attrs
        {
          config: config,
          controls_list: controls_list,
          cross_origin: cross_origin,
          media_title: media_title,
          poster: poster,
          preload: preload,
          version: version,
        }
      end
    end
  end
end
