# frozen_string_literal: true

# @see https://vimejs.com/components/providers/file

module Vime
  module Providers
    class File < Component
      option :auto_pip, type: Types::Bool, optional: true
      option :controls_list, type: Types::String, optional: true
      option :cross_origin, type: Types::CrossOrigin, optional: true
      option :disable_pip, type: Types::Bool, optional: true
      option :disable_remote_playback, type: Types::Bool, optional: true
      option :media_title, type: Types::String, optional: true
      option :poster, type: Types::String, optional: true
      option :preload, type: Types::Preload, default: -> { "metadata" }
      option :view_type, type: Types::String, optional: true

      def call
        content_tag "vm-file", content, process_attrs(dom_attrs)
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
          view_type: view_type,
        })
      end
    end
  end
end
