
# setup
if (!require("pacman")) install.packages("pacman"); library(pacman)
p_load(tidyverse)
p_load(magrittr)
p_load(here)
p_load(plotly)

# 後から追加
p_load(httpgd)
p_load(flexdashboard)
p_load(bslib)
p_load(thematic)
print("nyaa")

# p_load(Robyn)

# hgd()
# hgd_browse()

# # シュミレーションデータ(ドイツの広告)
# dat = 
#   dt_simulated_weekly %>% 
#   tibble() %>% 
#   clean_names() %>% # 列名
#   mutate(date = date %>% as.POSIXct()) # 日付の型

# dat %>% 
#   ggplot() + 
#   aes(x = date, y = revenue) +
#   geom_point(color = "red")
