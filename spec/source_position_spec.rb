require 'spec_helper'
require 'source_position'

class Dummy
  def self.foobar
    puts '42'
  end

  def test
    :testing
  end
end

describe SourcePosition do
  subject { Dummy.method(:foobar) }

  its(:source_position) { should eq "#{Dir.pwd}/spec/source_position_spec.rb:5"}

  context 'source_location returns nil value' do
    subject { Object.method(:to_s) }
    its(:source_position) { should eq nil }
  end

  describe 'Method' do
    subject { Dummy.method(:foobar) }
    its(:source_position) { should eq "#{Dir.pwd}/spec/source_position_spec.rb:5"}
  end

  describe 'UnboundMethod' do
    subject { Dummy.instance_method(:test) }
    its(:source_position) { should eq "#{Dir.pwd}/spec/source_position_spec.rb:9"}
  end

  describe 'Proc' do
    subject { Proc.new{} }
    its(:source_position) { should eq "#{Dir.pwd}/spec/source_position_spec.rb:35"}
  end
end

