# rails app template: cancan.rb
# https://github.com/ryanb/cancan

gem "cancan"
run "bundle install"
generate "cancan:ability"

say <<-END
\nComplete! For more info, please refer to https://github.com/ryanb/cancan.\n
END

