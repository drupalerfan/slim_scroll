require 'rails'

# Supply generator for Rails 3.0.x or if asset pipeline is not enabled
if ::Rails.version < "3.1" || !::Rails.application.config.assets.enabled || !File.exist?('app/assets/javascripts/application.js') || !File.exist?('app/assets/javascripts/application.js.coffee')
  module SlimScroll
    module Generators
      class InstallGenerator < ::Rails::Generators::Base

        desc "This generator installs SlimScroll"
        source_root File.expand_path('../../../../../vendor/assets/javascripts', __FILE__)

        def copy_slim_scroll
          say_status("copying", "slim_scroll", :green)
          copy_file "slim_scroll.js", "public/javascripts/slim_scroll.js"
          copy_file "slim_scroll.min.js", "public/javascripts/slim_scroll.min.js"
        end
      end
    end
  end
else
  module SlimScroll
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "This generator add SlimScroll  to application.js or application.js.coffee"
        source_root File.expand_path('../../../../../vendor/assets/javascripts', __FILE__)
        def add_assets
          insert_into_file "app/assets/javascripts/application#{detect_js_format[0]}", "#{detect_js_format[1]} require slim_scroll\n", :after => "jquery_ujs\n"
        end
        
        def detect_js_format
          return ['.js.coffee', '#='] if File.exist?('app/assets/javascripts/application.js.coffee')
          return ['.js', '//='] if File.exist?('app/assets/javascripts/application.js')
        end
      end
    end
  end
end
