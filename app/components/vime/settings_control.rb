# frozen_string_literal: true
module Vime
  class SettingsControl < Component
    option :expanded, optional: true
    option :icon, optional: true
    option :menu, optional: true
    option :tooltip_direction, optional: true
    option :tooltip_position, optional: true
  end
end
