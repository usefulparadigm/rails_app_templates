# jammit.rb: rails app template 

gem "jammit"

file "config/assets.yml", <<-CODE
embed_assets: on

javascripts:
  workspace:
    - public/javascripts/vendor/jquery.js
    - public/javascripts/lib/*.js
    - public/javascripts/views/**/*.js
    - app/templates/**/*.jst

stylesheets:
  common:
    - public/stylesheets/reset.css
    - public/stylesheets/widgets/*.css
  workspace:
    - public/stylesheets/pages/workspace.css
  empty:
    - public/stylesheets/pages/empty.css
CODE

initializer 'jammit.rb', <<-CODE
# to solve JST naming gotcha
# https://github.com/documentcloud/jammit/issues/192

Jammit::Compressor.class_eval do
  private
  def find_base_path(path)
    File.expand_path(Rails.root.join('app','templates'))
  end
end
CODE