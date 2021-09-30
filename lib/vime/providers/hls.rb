# frozen_string_literal: true

# @see https://vimejs.com/components/providers/hls

module Vime
  module Providers
    class Hls < Video
      option :config, type: Types::Any, optional: true
      option :controls_list, type: Types::String, optional: true
      option :cross_origin, type: Types::CrossOrigin, optional: true
      option :media_title, type: Types::String, optional: true
      option :poster, type: Types::String, optional: true
      option :preload, type: Types::Preload, optional: true
      option :version, type: Types::String, optional: true

      def call
        content_tag "vm-hls", content, process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          config: config,
          controls_list: controls_list,
          cross_origin: cross_origin,
          media_title: media_title,
          poster: poster,
          preload: preload,
          version: version,
        })
      end
    end
  end
end
