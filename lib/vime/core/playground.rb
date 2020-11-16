# frozen_string_literal: true

# @see https://vimejs.com/components/core/playground

module Vime
  module Core
    class Playground < Component
      option :poster, type: Types::String, optional: true
      option :provider, type: Types::String.enum("Provider.Audio", "Provider.Dailymotion", "Provider.Dash", "Provider.FakeTube", "Provider.Video", "Provider.Vimeo", "Provider.YouTube"), default: -> { "Provider.Audio" }
      option :show_custom_ui, type: Types::Bool, optional: true
      option :src, type: Types::String
      option :theme, type: Types::String.enum("", "dark", "light"), default: -> { "" }

      def call
        content_tag "vime-playground", content, process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          poster: poster,
          provider: provider,
          show_custom_ui: show_custom_ui,
          src: src,
          theme: theme,
        })
      end
    end
  end
end
