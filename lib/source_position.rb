if RUBY_VERSION < '1.9'
  unless defined?(RUBY_ENGINE) && RUBY_ENGINE =~ /rbx/
    begin
      require 'ruby18_source_location'
    rescue LoadError
      raise 'Could not load the ruby18_source_location gem.
Install it with `gem install ruby18_source_location`'
    end
  end
end

require "source_position/version"
require "source_position/rbx_source_location"

module SourcePosition
  def source_position
    self.source_location.join(':') if self.source_location
  end
end

class Method
  include SourcePosition
end

class UnboundMethod
  include SourcePosition
end

class Proc
  include SourcePosition::RbxSourceLocation
  include SourcePosition
end
