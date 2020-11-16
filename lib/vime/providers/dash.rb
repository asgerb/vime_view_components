# frozen_string_literal: true

# @see https://vimejs.com/components/providers/dash

module Vime
  module Providers
    class Dash < Component
      option :auto_pip, type: Types::Bool, optional: true
      option :controls_list, type: Types::String, optional: true
      option :cross_origin, type: Types::CrossOrigin, optional: true
      option :disable_pip, type: Types::Bool, optional: true
      option :disable_remote_playback, type: Types::Bool, optional: true
      option :media_title, type: Types::String, optional: true
      option :poster, type: Types::String, optional: true
      option :preload, type: Types::Preload, default: -> { "metadata" }
      option :src, type: Types::String
      option :version, type: Types::String, default: -> { "latest" }

      def call
        content_tag "vime-dash", content, process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          auto_pip: auto_pip,
          controls_list: controls_list,
          cross_origin: cross_origin,
          disable_pip: disable_pip,
          disable_remote_playback: disable_remote_playback,
          media_title: media_title,
          poster: poster,
          preload: preload,
          src: src,
          version: version,
        })
      end
    end
  end
end
