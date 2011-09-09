# rails app template: omniauth.rb
# https://github.com/intridea/omniauth
# http://blog.railsrumble.com/blog/2010/10/08/intridea-omniauth

gem "omniauth", "0.2.0"

initializer 'omniauth.rb', <<-CODE
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  provider :facebook, 'APP_ID', 'APP_SECRET'
  provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end
CODE

file "app/controllers/sessions_controller.rb", <<-CODE
class SessionsController < ApplicationController
  def create
    render :text => request.env['omniauth.auth'].inspect
  end
end
CODE

route "match '/auth/:provider/callback', :to => 'sessions#create'"

say <<-END
Complete! Edit config/initializer/omniauth.rb to activate service provider's API.\n
END

