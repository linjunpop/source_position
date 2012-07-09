require "source_position/version"

module SourcePosition
  def source_position
    self.source_location.join(':') if self.source_location
  end
end

class Method
  include SourcePosition
end
