# rails_app_templates: jquery.rb

inside("public/javascripts") do
  run "curl -s http://code.jquery.com/jquery-1.6.2.min.js > jquery-1.6.2.min.js"
  run "curl -s https://github.com/rails/jquery-ujs/raw/master/src/rails.js > jquery-rails.js"
end

say <<-OUT
Complete! Add this script in your application.html.erb (recommended):

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script>window.jQuery || document.write("<script src='javascripts/jquery-1.6.2.min.js'>\\x3C/script>")</script>
OUT
