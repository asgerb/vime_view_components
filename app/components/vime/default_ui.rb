# frozen_string_literal: true
module Vime
  class DefaultUi < Component
    option :no_captions, optional: true
    option :no_click_to_play, optional: true
    option :no_controls, optional: true
    option :no_dbl_click_fullscreen, optional: true
    option :no_icons, optional: true
    option :no_poster, optional: true
    option :no_settings, optional: true
    option :no_skeleton, optional: true
    option :no_spinner, optional: true

    def call
      content_tag "vime-default-ui", content, dom_attrs
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
      }).deep_transform_keys! { |key| key.to_s.dasherize }
    end
  end
end
