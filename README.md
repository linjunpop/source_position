# SourcePosition

Editor friendly source location

[![Build Status](https://secure.travis-ci.org/linjunpop/source_position.png?branch=master)](http://travis-ci.org/linjunpop/source_position)
[![Dependency Status](https://gemnasium.com/linjunpop/source_position.png)](https://gemnasium.com/linjunpop/source_position)
[![Gem Version](https://badge.fury.io/rb/source_position.png)](http://badge.fury.io/rb/source_position)
[![Code Climate](https://codeclimate.com/github/linjunpop/source_position.png)](https://codeclimate.com/github/linjunpop/source_position)
[![endorse](http://api.coderwall.com/linjunpop/endorsecount.png)](http://coderwall.com/linjunpop)

Tested on 1.8.7, 1.9.3, 2.0.0, ree, rbx-18mode, rbx-19mode

If you are using 1.8.7 or ree, you have to install [ruby18_source_location].

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
# => "/foo/bar.rb:4"
```

So, in iTerm, you can use `⌘-Click` to open this file on line 4.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[ruby18_source_location]: https://github.com/ConradIrwin/ruby18_source_location
