require 'rails'
require 'slim_scroll/assert_select' if ::Rails.env.test?
require 'slim_scroll/rails/engine' if ::Rails.version >= '3.1'
require 'slim_scroll/rails/railtie'
module SlimScroll
  module Rails
  end
end
