# frozen_string_literal: true

Rails.application.routes.draw do
  mount VimeViewComponents::Engine => "/vime_view_components"
end
