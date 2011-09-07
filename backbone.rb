inside('app/assets') do
  run "mkdir javascripts/models"
  run "mkdir javascripts/views"
  run "mkdir javascripts/routers"
  run "mkdir templates"
  run "touch javascripts/app.js"
end

inside('public/javascripts/vendor') do
  run "curl http://documentcloud.github.com/underscore/underscore.js > underscore.js"
  run "curl http://documentcloud.github.com/backbone/backbone.js > backbone.js"
end
