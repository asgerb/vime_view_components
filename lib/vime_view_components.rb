# frozen_string_literal: true

require "dry-initializer"
require "dry-types"
require "rails"
require "view_component"

require "vime/component"

require "vime/core/player"

require "vime/providers/audio"
require "vime/providers/hls"
require "vime/providers/video"
require "vime/providers/vimeo"
require "vime/providers/youtube"

require "vime/ui/controls/caption_control"
require "vime/ui/controls/control"
require "vime/ui/controls/control_group"
require "vime/ui/controls/control_spacer"
require "vime/ui/controls/controls"
require "vime/ui/controls/default_controls"
require "vime/ui/controls/fullscreen_control"
require "vime/ui/controls/mute_control"
require "vime/ui/controls/playback_control"
require "vime/ui/controls/pip_control"
require "vime/ui/controls/scrubber_control"
require "vime/ui/controls/settings_control"
require "vime/ui/controls/volume_control"

require "vime/ui/time/current_time"
require "vime/ui/time/end_time"
require "vime/ui/time/time"
require "vime/ui/time/time_progress"

require "vime/ui/settings/default_settings"

require "vime/ui/captions"
require "vime/ui/click_to_play"
require "vime/ui/dbl_click_fullscreen"
require "vime/ui/default_ui"
require "vime/ui/icon"
require "vime/ui/icons"
require "vime/ui/live_indicator"
require "vime/ui/poster"
require "vime/ui/scrim"
require "vime/ui/skeleton"
require "vime/ui/slider"
require "vime/ui/spinner"
require "vime/ui/tooltip"
require "vime/ui/ui"

require "vime_view_components/version"

module VimeViewComponents
end
