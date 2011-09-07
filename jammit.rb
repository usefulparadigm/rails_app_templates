# jammit.rb: rails app template 

gem "jammit"

file "config/assets.yml", <<-CODE
embed_assets: on

javascripts:
  workspace:
    - public/javascripts/vendor/jquery.js
    - public/javascripts/lib/*.js
    - public/javascripts/views/**/*.js
    - app/views/workspace/*.jst

stylesheets:
  common:
    - public/stylesheets/reset.css
    - public/stylesheets/widgets/*.css
  workspace:
    - public/stylesheets/pages/workspace.css
  empty:
    - public/stylesheets/pages/empty.css
CODE