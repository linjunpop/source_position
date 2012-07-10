require 'spec_helper'

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

  its(:source_position) { should eq "#{Dir.pwd}/spec/source_position_spec.rb:4"}

  context 'source_location returns nil value' do
    subject { Object.method(:to_s) }
    its(:source_position) { should eq nil }
  end

  describe 'Method' do
    subject { Dummy.method(:foobar) }
    its(:source_position) { should eq "#{Dir.pwd}/spec/source_position_spec.rb:4"}
  end

  describe 'UnboundMethod' do
    subject { Dummy.instance_method(:test) }
    its(:source_position) { should eq "#{Dir.pwd}/spec/source_position_spec.rb:8"}
  end

  describe 'Proc' do
    subject { Proc.new{} }
    its(:source_position) { should eq "#{Dir.pwd}/spec/source_position_spec.rb:34"}
  end
end
