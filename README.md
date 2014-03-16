# irc_colors

`irc_colors` provides string methods to use IRC color schemes.
It is defined as a /refinement/ so compatible with `ruby >= 2`

## Installation

``` ruby
gem "irc_colors"
```

## Usage

```ruby
require 'irc_colors'

class MyApp
  using IRCColors

  def initialize(string)
    puts string.irc_color(:light_red, :blue).irc_underline
  end
end
```
### Colors:
  `:white :black :blue :green :light_red :red :purple :orange :yellow :light_green :cyan :light_cyan :light_blue :light_purple :grey :light_grey`

### Styles
  `irc_underline irc_bold irc_inverse`

## License

[MIT](http://opensource.org/licenses/MIT)
