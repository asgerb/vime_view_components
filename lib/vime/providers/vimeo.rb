# frozen_string_literal: true

# @see https://vimejs.com/components/providers/vimeo

module Vime
  module Providers
    class Vimeo < Component
      option :byline, type: Types::Bool, default: -> { true }
      option :color, type: Types::String, optional: true
      option :no_auto_aspect_ratio, type: Types::Bool, default: -> { false }
      option :portrait, type: Types::Bool, default: -> { true }
      option :poster, type: Types::String, optional: true
      option :video_id, type: Types::String

      def call
        tag "vime-vimeo", dom_attrs
      end

      def dom_attrs
        super.merge({
          byline: byline,
          color: color,
          no_auto_aspect_ratio: no_auto_aspect_ratio,
          portrait: portrait,
          poster: poster,
          video_id: video_id,
        }).deep_transform_keys! { |key| key.to_s.dasherize }
      end
    end
  end
end
