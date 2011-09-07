# rails app templates: bootstrap.rb
# add Bootstrap CSS toolkit (LESS)
# http://twitter.github.com/bootstrap/ 

inside("app/assets/stylesheets") do
  run "mkdir bootstrap"
  %w[adaptive bootstrap forms patterns preboot reset scaffolding tables type].each do |name|
    run "curl -s https://raw.github.com/twitter/bootstrap/master/lib/#{name}.less > bootstrap/#{name}.less"
  end
end

say <<-END
\nComplate! To activate Bootstrap, add this line on your application.less file.
You can read more on http://twitter.github.com/bootstrap/ 

@import 'bootstrap/bootstrap';\n
END