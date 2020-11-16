# frozen_string_literal: true

# @see https://vimejs.com/components/core/embed

module Vime
  module Core
    class Embed < Component
      option :embed_src, type: Types::String
      option :media_title, type: Types::String, optional: true
      option :origin, type: Types::String, optional: true
      option :params, type: Types::String, optional: true

      def call
        content_tag "vime-embed", content, process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          embed_src: embed_src,
          media_title: media_title,
          origin: origin,
          params: params,
        })
      end
    end
  end
end
