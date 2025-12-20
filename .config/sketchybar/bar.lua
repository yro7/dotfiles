local colors = require("colors")

sbar.bar({
  height = 40,
  color = colors.bar.bg,
  border_color = colors.bar.border_color,
  padding_right = 10,
  padding_left = 10,
  topmost = "off",
  hotload = true,
  margin = 0,  
  display = all,
  shadow = true,
})
