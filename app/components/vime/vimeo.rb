# frozen_string_literal: true
module Vime
  class Vimeo < Component
    option :video_id

    def call
      tag "vime-vimeo", dom_attrs
    end

    def dom_attrs
      super.merge({
        video_id: video_id,
      }).deep_transform_keys! { |key| key.to_s.dasherize }
    end
  end
end
