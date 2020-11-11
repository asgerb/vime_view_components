# frozen_string_literal: true
module Vime
  module Core
    class Player < Component
      option :controls, optional: true
      option :autoplay, optional: true
      option :muted, optional: true
      option :current_time, optional: true

      def call
        content_tag "vime-player", content, dom_attrs
      end

      def dom_attrs
        super.merge({
          controls: controls,
          autoplay: autoplay,
          muted: muted,
          current_time: current_time,
        }).deep_transform_keys! { |key| key.to_s.dasherize }
      end
    end
  end
end
