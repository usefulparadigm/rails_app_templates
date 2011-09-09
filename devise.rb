# rails app template: devise.rb
# https://github.com/plataformatec/devise

gem "devise"
generate "devise:install"
generate "devise", "User"
# route "devise_for :users"