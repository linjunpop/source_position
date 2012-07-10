require "source_position/version"
require 'ruby18_source_location' if RUBY_VERSION < '1.9'

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
  include SourcePosition
end
