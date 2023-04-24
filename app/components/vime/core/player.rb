# frozen_string_literal: true

# @see https://vimejs.com/components/core/player

module Vime
  module Core
    class Player < Component
      option :aspect_ratio, type: Types::String, optional: true
      option :autopause, type: Types::Bool, optional: true
      option :autoplay, type: Types::Bool, optional: true
      option :controls, type: Types::Bool, optional: true
      option :current_time, type: Types::Integer, optional: true
      option :debug, type: Types::Bool, optional: true
      option :duration, type: Types::Integer, optional: true
      option :language, type: Types::String, optional: true
      option :loop, type: Types::Bool, optional: true
      option :media_title, type: Types::String, optional: true
      option :muted, type: Types::Bool, optional: true
      option :paused, type: Types::Bool, optional: true
      option :playback_quality, type: Types::String, optional: true
      option :playback_rate, type: Types::Integer, optional: true
      option :playsinline, type: Types::Bool, optional: true
      option :theme, type: Types::String, optional: true
      option :volume, type: Types::Integer, optional: true

      def call
        content_tag "vm-player", content, process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          aspect_ratio: aspect_ratio,
          autopause: autopause,
          autoplay: autoplay,
          controls: controls,
          current_time: current_time,
          debug: debug,
          duration: duration,
          language: language,
          loop: loop,
          media_title: media_title,
          muted: muted,
          paused: paused,
          playback_quality: playback_quality,
          playback_rate: playback_rate,
          playsinline: playsinline,
          theme: theme,
          volume: volume,
        })
      end
    end
  end
end
