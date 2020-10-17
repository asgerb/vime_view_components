# frozen_string_literal: true
require "dry-initializer"
module Vime
  class Component < ViewComponent::Base
    extend Dry::Initializer

    option :class, optional: true, as: :classes
    option :data, optional: true
    option :style, optional: true

    def dom_attrs
      {
        class: classes,
        data: data,
        style: style,
      }
    end
  end
end
