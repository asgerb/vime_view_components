# frozen_string_literal: true
module Vime
  class Scrim < Component
    option :gradient, optional: true

    def call
      content_tag "vime-scrim", content, dom_attrs
    end

    def dom_attrs
      super.merge({
        gradient: gradient,
      }).deep_transform_keys! { |key| key.to_s.dasherize }
    end
  end
end
