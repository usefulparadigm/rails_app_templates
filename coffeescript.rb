# rails app templates: coffeescript.rb

gem "guard-coffeescript", :group => :development
# run "bundle install"
# run "guard init coffeescript"

# file "Guardfile", <<-END
# # use shorthand style
# guard 'coffeescript', :input => 'app/assets/coffeescripts', :output => 'public/javascripts'
# END

inside("app/assets") do
  run "mkdir coffeescripts"
  run "touch demo.coffee"
end

# say <<-END
# Complete! You MUST add this guard script in your Guardfile.
# 
# guard 'coffeescript', :input => 'app/assets/coffeescripts', :output => 'public/javascripts'
# END
