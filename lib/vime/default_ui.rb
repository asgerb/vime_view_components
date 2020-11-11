# frozen_string_literal: true

# @see https://vimejs.com/components/ui/default-ui

module Vime
  class DefaultUi < Component
    option :no_captions, type: Types::Bool, default: -> { false }
    option :no_click_to_play, type: Types::Bool, default: -> { false }
    option :no_controls, type: Types::Bool, default: -> { false }
    option :no_dbl_click_fullscreen, type: Types::Bool, default: -> { false }
    option :no_icons, type: Types::Bool, default: -> { false }
    option :no_poster, type: Types::Bool, default: -> { false }
    option :no_settings, type: Types::Bool, default: -> { false }
    option :no_skeleton, type: Types::Bool, default: -> { false }
    option :no_spinner, type: Types::Bool, default: -> { false }

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
