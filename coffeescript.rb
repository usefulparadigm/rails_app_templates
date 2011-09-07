# rails app templates: coffeescript.rb

inside("app/assets") do
  run "mkdir coffeescripts"
  file "app.coffee", <<-END
alert('bingo!')
  END
end

file "Guardfile", <<-END
# use shorthand style
guard 'coffeescript', :input => 'app/assets/coffeescripts', :output => 'public/javascripts'
END