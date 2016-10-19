# frozen_string_literal: true
module Api
  module Endpoints
    class Root < Grape::API
      namespace :root do
        desc 'Exposes all routes',
             success: Entities::Route,
             is_array: true
        get do
          api_routes = Api::Rake::GrapeTasks.new.api_routes

          present :count, api_routes.length
          present :items, api_routes, with: Entities::Route
        end
      end
    end
  end
end
