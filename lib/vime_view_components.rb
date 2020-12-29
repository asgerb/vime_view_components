# frozen_string_literal: true

require "dry-initializer"
require "dry-types"
require "rails"
require "view_component"
require "zeitwerk"

require "vime_view_components/version"

module VimeViewComponents
end

module Vime
end

Zeitwerk::Loader.new.tap do |loader|
  loader.push_dir("#{__dir__}/vime", namespace: Vime)
  loader.setup
  loader.eager_load
end
