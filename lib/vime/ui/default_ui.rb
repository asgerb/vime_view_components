# frozen_string_literal: true

# @see https://vimejs.com/components/ui/default-ui

module Vime
  module Ui
    class DefaultUi < Component
      option :no_captions, type: Types::Bool, optional: true
      option :no_click_to_play, type: Types::Bool, optional: true
      option :no_controls, type: Types::Bool, optional: true
      option :no_dbl_click_fullscreen, type: Types::Bool, optional: true
      option :no_icons, type: Types::Bool, optional: true
      option :no_poster, type: Types::Bool, optional: true
      option :no_settings, type: Types::Bool, optional: true
      option :no_skeleton, type: Types::Bool, optional: true
      option :no_spinner, type: Types::Bool, optional: true

      def call
        content_tag "vm-default-ui", content, process_attrs(dom_attrs)
      end

      def dom_attrs
        super.merge({
          no_captions: no_captions,
          no_click_to_play: no_click_to_play,
          no_controls: no_controls,
          no_dbl_click_fullscreen: no_dbl_click_fullscreen,
          no_icons: no_icons,
          no_poster: no_poster,
          no_settings: no_settings,
          no_skeleton: no_skeleton,
          no_spinner: no_spinner,
        })
      end
    end
  end
end
