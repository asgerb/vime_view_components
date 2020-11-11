# frozen_string_literal: true

require "dry-initializer"

module Vime
  class Component < ViewComponent::Base
    extend Dry::Initializer

    module Types
      include Dry.Types()
    end

    option :class, type: Types::Array.of(Types::String).optional, optional: true, as: :classes
    option :data, type: Types::Hash.optional, optional: true
    option :style, type: Types::String.optional, optional: true

    def dom_attrs
      {
        class: classes,
        data: data,
        style: style,
      }
    end
  end
end
