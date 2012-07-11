module SourcePosition
  module RbxSourceLocation
    def source_location
      [block.file.to_s, block.line]
    end
  end
end
