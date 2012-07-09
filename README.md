# SourcePosition

Editor friendly source location

Works with ruby 1.9

## Installation

Add this line to your application's Gemfile:

    gem 'source_position'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install source_position

## Usage

```ruby
# file: /foo/bar.rb

class Dummy
  def foobar
    puts '42'
  end
end
```

```ruby
Dummy.method(:foobar).source_position
```

should ouputs something like this:

```ruby
"/foo/bar.rb:4"
```

So, in iTerm, you can press `⌘-Click` to open this file and navigate to 
line 4. 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
