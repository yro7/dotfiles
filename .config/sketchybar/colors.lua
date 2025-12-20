return {
  black = 0xff100b1a,
  white = 0xffeaddff,
  red = 0xffff7599,
  green = 0xffa3e68c,
  blue = 0xff8b80f9,
  yellow = 0xfff0c674,
  orange = 0xffff9e64,
  magenta = 0xffd279f5,
  grey = 0xff6e5e85,
  transparent = 0x00000000,

  bar = {
    bg = 0xff160b21,
    border_color=0xffffffff,
  },
  
  popup = {
    bg = 0xe0160b21,
    border = 0xffd279f5
  },
  
  bg1 = 0xff2d1842,
  bg2 = 0xff482869,

  with_alpha = function(color, alpha)
    if alpha > 1.0 or alpha < 0.0 then return color end
    return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
  end,
}
