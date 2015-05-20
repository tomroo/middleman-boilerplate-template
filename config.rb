require 'stringex'
require 'time'
require 'active_support/all'
require "lib/custom_helpers"

helpers CustomHelpers

activate :livereload
activate :i18n, :mount_at_root => :tr

set :css_dir, 'public/css'
set :js_dir, 'public/js'
set :images_dir, 'public/images'

set :site_production_url, 'http://example.com'

configure :build do
  activate :minify_css
  activate :minify_javascript
end

# activate :deploy do |deploy|
#   deploy.build_before = true
#   deploy.method   = :rsync
#   deploy.user     = "SSH_USER"
#   deploy.host     = "SSH_HOST"
#   deploy.path     = "/path/to/foler/example.com"
# end
