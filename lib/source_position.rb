require "source_position/version"

module SourcePosition
  def source_position
    self.source_location.join(':')
  end
end

class Method
  include SourcePosition
end
