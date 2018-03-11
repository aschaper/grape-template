require 'grape'

# Load files from the models and api folders
Dir["#{File.dirname(__FILE__)}/app/**/*.rb"].each { |f| require f }

Bundler.require :default, ENV['RACK_ENV']

module GrapeTemplate
  class Root < Grape::API
    format :json

    get :status do
      { status: 'ok' }
    end

    mount ::GrapeTemplate::API
  end
end