# frozen_string_literal: true

# @see https://vimejs.com/components/providers/youtube

module Vime
  module Providers
    class Dailymotion < Component
      option :color, type: Types::String, optional: true
      option :poster, type: Types::String, optional: true
      option :should_autoplay_queue, type: Types::Bool, default: -> { false }
      option :show_dailymotion_logo, type: Types::Bool, default: -> { false }
      option :show_share_buttons, type: Types::Bool, default: -> { false }
      option :show_up_next_queue, type: Types::Bool, default: -> { false }
      option :show_video_info, type: Types::Bool, default: -> { true }
      option :syndication, type: Types::String, optional: true
      option :video_id, type: Types::String

      def call
        tag "vime-dailymotion", process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          color: color,
          poster: poster,
          should_autoplay_queue: should_autoplay_queue,
          show_dailymotion_logo: show_dailymotion_logo,
          show_share_buttons: show_share_buttons,
          show_up_next_queue: show_up_next_queue,
          show_video_info: show_video_info,
          syndication: syndication,
          video_id: video_id,
        })
      end
    end
  end
end
