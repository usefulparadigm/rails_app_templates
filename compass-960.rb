# rails app template: compass-960.rb
# https://github.com/nextmat/compass-960-plugin

gem "compass-960-plugin", :require => 'ninesixty'

inside("app/assets/stylesheets") do
  file "_base.scss", <<-END
@import "compass";
//@import "compass/reset";
@import "960/grid";
\n$ninesixty-columns: 16;
END
end

initializer 'compass.rb', <<-CODE
# for more info http://compass-style.org/help/tutorials/configuration-reference/
Compass.configuration do |config|
  config.project_path = File.dirname(__FILE__)
  config.sass_dir = 'app/assets/stylesheets'
end
CODE

say <<-END
\nComplate! To activate, add this line on your application.scss file.

@import "base";\n
END