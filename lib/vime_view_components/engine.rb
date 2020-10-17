# frozen_string_literal: true

module VimeViewComponents
  class Engine < ::Rails::Engine
    isolate_namespace VimeViewComponents
  end
end

require "#{VimeViewComponents::Engine.root}/app/components/vime/view_components.rb"
