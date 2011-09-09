# rails app template: compass-960.rb
# https://github.com/nextmat/compass-960-plugin

gem "compass"
gem "compass-960-plugin", :require => 'ninesixty'

inside("app/assets/stylesheets") do
  file "_base.scss", <<-END
@import "compass";
//@import "compass/reset";
@import "960/grid";
\n$ninesixty-columns: 16;
END
end

file 'config/compass.rb', <<-END
# This configuration file works with both the Compass command line tool and within Rails.
# Require any additional compass plugins here.
project_type = :rails

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "public/stylesheets"
sass_dir = "app/assets/stylesheets"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass app/stylesheets scss && rm -rf sass && mv scss sass
END

initializer 'compass.rb', <<-END
require 'compass'
require 'compass/app_integration/rails'
Compass::AppIntegration::Rails.initialize!
END

file 'app/assets/stylesheets/application.scss', <<-END
@import "base";

#page {
	@include grid-container;
	@include clearfix;
	background-color: #fff;
}
#header {}
#main {
	@include clearfix;
}
#content {
	@include grid(10);
	@include grid-suffix(1);
}
#side {
	@include grid(5);
}
#footer {}
END

say <<-END
\nComplete! Use this structure for your application layout.

<div id="page">
	<div id="header">
	</div>
	<div id="main">
			<div id="content">
			</div>
		</div>
		<div id="sub">
			<div id="sidebar"></div>
		</div>
	<div id="footer">
	</div>
</div>\n	
END