### Rails Application Templates Collections

Rails App Templates are simple ruby files containing DSL for adding plugins/gems/initializers etc. to your newly created /existing Rails project. 

#### Usage

On new rails project:

	$ rails new [app_name] -m https://github.com/usefulparadigm/rails_app_templates/raw/master/backbone.rb
	
On existing rails project:

	$ rake rails:template LOCATION=https://github.com/usefulparadigm/rails_app_templates/raw/master/backbone.rb


#### References

- http://guides.rubyonrails.org/generators.html#application-templates
- http://m.onkey.org/rails-templates

