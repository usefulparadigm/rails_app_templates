# rails app template: less.rb

gem "guard-less", :group => :development

say <<-END
\nComplete! You can add this guard script in your application's Guardfile.

guard 'less', :output => 'public/stylesheets' do
  watch(%r{^app/assets/stylesheets/(.+\.less)$})
end\n
END