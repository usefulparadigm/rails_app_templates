# rails app template: high_voltage.rb
# https://github.com/thoughtbot/high_voltage

gem "high_voltage"
run "mkdir app/views/pages"
run "touch app/views/pages/about.html.erb"

if yes?("Would you like to override pages controller?")
  route "resources :pages"
  file "app/controllers/pages_controller.rb", <<-END
class PagesController < HighVoltage::PagesController
  # before_filter :authenticate
  # layout :layout_for_page
  # 
  # protected
  #   def layout_for_page
  #     case params[:id]
  #     when 'home'
  #       'home'
  #     else
  #       'application'
  #     end
  #   end
end
  END
end
