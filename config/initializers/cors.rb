# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#  allow do
#    origins 'localhost:3000' 

#    resource '*',
#      headers: :any,
#      credentials: true,
#      methods: [:get, :post, :put, :patch, :delete, :options, :head]
#  end
# end
Rails.application.config.middleware.insert_before 0, Rack::Cors, debug: true, logger: (-> { Rails.logger }) do
  allow do
    origins '*'

    resource '/cors',
      :headers => :any,
      :methods => [:post],
      :max_age => 0

    resource '*',
      :headers => :any,
      :methods => [:get, :post, :delete, :put, :patch, :options, :head],
      :max_age => 0
  end
end