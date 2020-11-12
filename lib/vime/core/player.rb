# frozen_string_literal: true

# @see https://vimejs.com/components/core/player

module Vime
  module Core
    class Player < Component
      option :aspect_ratio, type: Types::String, default: -> { "16:9" }
      option :autopause, type: Types::Bool, default: -> { true }
      option :autoplay, type: Types::Bool, default: -> { false }
      option :controls, type: Types::Bool, default: -> { false }
      option :current_time, type: Types::Integer, default: -> { 0 }
      option :debug, type: Types::Bool, default: -> { false }
      option :duration, type: Types::Integer, default: -> { -1 }
      option :language, type: Types::String, default: -> { "en" }
      option :loop, type: Types::Bool, default: -> { false }
      option :media_title, type: Types::String, optional: true
      option :muted, type: Types::Bool, default: -> { false }
      option :paused, type: Types::Bool, default: -> { true }
      option :playback_quality, type: Types::String, optional: true
      option :playback_rate, type: Types::Integer, default: -> { 1 }
      option :playsinline, type: Types::Bool, default: -> { false }
      option :theme, type: Types::String, optional: true
      option :volume, type: Types::Integer, default: -> { 50 }

      def call
        content_tag "vime-player", content, process_attrs(dom_attrs)
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
