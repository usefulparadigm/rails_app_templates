# rails app template: backbone.rb

inside('public/javascripts/vendor') do
  run "curl -s http://documentcloud.github.com/backbone/backbone.js > backbone.js"
  run "curl -s http://documentcloud.github.com/underscore/underscore.js > underscore.js"
  # run "curl -s https://raw.github.com/douglascrockford/JSON-js/master/json2.js > json2.js"
end

run "mkdir -p app/templates"

inside('public/javascripts') do
  run "mkdir models"
  run "mkdir views"
  run "mkdir routers"

  file "app.js", <<-END
// This is just a sample script. Do not use this as is.
  
var App = {
	Models: {},
	Views: {}
}

App.Router = Backbone.Router.extend({
	routes: {
		"": "index"
	},
	
	index: function() {
		// render the view
		new App.EntriesIndex();
	}
});

App.Models.Entry = Backbone.Model.extend({
	urlRoot: '/entries'
});


App.Collections.Entries = Backbone.Collection.extend({
	model: App.Models.Entry,
	url: '/entries'
});


App.Views.EntriesIndex = Backbone.View.extend({
	initialize: function() {
		this.render();
	},
	render: function() {
		$(this.el).html(JST['entries/index']({entries: this.collection}));
		$('.container').html(this.el);
		return this;
	}
});

$(function() {
  new App.Router();
	Backbone.history.start();
});

END
end

