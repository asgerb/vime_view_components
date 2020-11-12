# frozen_string_literal: true

require "dry-initializer"
require "dry-types"
require "rails"
require "view_component"

require "vime/component"

require "vime/core/player"

require "vime/providers/audio"
require "vime/providers/video"
require "vime/providers/vimeo"

require "vime/ui/controls/caption_control"
require "vime/ui/controls/control_group"
require "vime/ui/controls/controls"
require "vime/ui/controls/fullscreen_control"
require "vime/ui/controls/mute_control"
require "vime/ui/controls/playback_control"
require "vime/ui/controls/scrubber_control"
require "vime/ui/controls/settings_control"
require "vime/ui/controls/volume_control"

require "vime/ui/default_ui"
require "vime/ui/scrim"

require "vime_view_components/version"

module VimeViewComponents
end
