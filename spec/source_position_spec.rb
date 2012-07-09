require 'spec_helper'
require 'source_position'

class Dummy
  def self.foobar
    puts '42'
  end
end

describe SourcePosition do
  subject { Dummy.method(:foobar) }

  its(:source_position) { should eq "#{Dir.pwd}/spec/source_position_spec.rb:5"}
end

