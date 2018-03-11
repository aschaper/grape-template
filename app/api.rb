module GrapeTemplate
  class API < Grape::API
    version 'v1', using: :header, vendor: :grapetemplate
    format :json

    # Endpoints go here!
  end
end
