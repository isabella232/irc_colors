module IRCColors
  refine String do
    COLOR = "\x03"
    CLEAR = "\x0f"

    STYLES = {
      irc_bold: "\x02",
      irc_underline: "\x1f",
      irc_inverse: "\x16",
    }

    COLORS = [
      :white, :black, :blue, :green, :light_red, :red, :purple, :orange, :yellow,
      :light_green, :cyan, :light_cyan, :light_blue, :light_purple, :grey, :light_grey,
    ]

    STYLES.each do |name, code|
      define_method name do
        str = "#{code}#{self}"
        str += CLEAR unless str.end_with?(CLEAR)
        str
      end
    end

    def irc_color(fg, bg=nil)
      tpl = "%02d"
      return self unless fg_code = COLORS.index(fg)
      colors = [(tpl % fg_code)]
      if bg_code = COLORS.index(bg)
        colors << (tpl % bg_code)
      end
      str = "#{COLOR}#{colors.join(",")}#{self}"
      str += CLEAR unless str.end_with?(CLEAR)
      str
    end
  end
end
