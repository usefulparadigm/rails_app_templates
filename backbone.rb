# rails app template: backbone.rb

inside('public/javascripts/vendor') do
  run "curl -s http://documentcloud.github.com/backbone/backbone.js > backbone.js"
  run "curl -s http://documentcloud.github.com/underscore/underscore.js > underscore.js"
  run "curl -s https://raw.github.com/douglascrockford/JSON-js/master/json2.js > json2.js"
end

inside('app/assets') do
  run "mkdir templates"
end

inside('public/javascripts') do
  run "mkdir models"
  run "mkdir views"
  run "mkdir routers"
  file "app.js", <<-END
var App = {
  Models: {},
  Views: {},
  Routers: {},
  init: function(collection) {
    Backbone.history.start();
  }
}
END
end

